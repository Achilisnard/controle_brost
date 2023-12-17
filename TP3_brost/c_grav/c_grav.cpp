#include "ap_int.h"
#include "hls_video.h"

volatile long cgx_r = 95;
volatile long cgy_r = 95;
typedef hls::stream<ap_axiu<24,1,1,1> > AXI_STREAM;

struct RGB_Pixel {
    unsigned char red;
    unsigned char green;
    unsigned char blue;
};
void c_grav(AXI_STREAM& s_axis_video, AXI_STREAM& m_axis_video, int hsize_in, int vsize_in, int *x_out, int *y_out)
{
    #pragma HLS INTERFACE axis register both port=s_axis_video
    #pragma HLS INTERFACE axis register both port=m_axis_video

    unsigned nb = 0;
    long cgx = 0;
    long cgy = 0;

    ap_axiu<24, 1, 1, 1> video;

    RGB_Pixel pixel;
    for (int i = 0; i < vsize_in; i++) {
        #pragma HLS PIPELINE
        for (int j = 0; j < hsize_in; j++) {

            s_axis_video >> video;
            pixel.red = video.data(7, 0);
            pixel.green = video.data(15, 8);
            pixel.blue = video.data(23, 16);


            if ((i >= cgy_r - 1) && (i < cgy_r + 1) && (j >= cgx_r - 1) && (j < cgx_r + 1)) {
            	pixel.red = 255;
            	pixel.green = 255;
            	pixel.blue = 255;
            	x_out=i;
            	y_out=j;
            }

            if (pixel.red < 100 && pixel.green < 100 && pixel.blue < 100) {
                cgx += j;
                cgy += i;
                nb++;
            }
            video.data(7, 0) = pixel.red;
            video.data(15, 8) = pixel.green;
            video.data(23, 16) = pixel.blue;
            m_axis_video << video;
        }
    }


    if (nb > 0) {
        cgx_r = cgx / nb;
        cgy_r = cgy / nb;
    }
}
