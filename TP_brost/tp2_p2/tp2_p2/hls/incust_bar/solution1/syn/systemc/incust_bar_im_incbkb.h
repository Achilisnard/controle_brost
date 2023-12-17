// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __incust_bar_im_incbkb_H__
#define __incust_bar_im_incbkb_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct incust_bar_im_incbkb_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 1;
  static const unsigned AddressRange = 1480;
  static const unsigned AddressWidth = 11;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(incust_bar_im_incbkb_ram) {
        for (unsigned i = 0; i < 1480 ; i = i + 1) {
            ram[i] = "0b1";
        }


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(incust_bar_im_incbkb) {


static const unsigned DataWidth = 1;
static const unsigned AddressRange = 1480;
static const unsigned AddressWidth = 11;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


incust_bar_im_incbkb_ram* meminst;


SC_CTOR(incust_bar_im_incbkb) {
meminst = new incust_bar_im_incbkb_ram("incust_bar_im_incbkb_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~incust_bar_im_incbkb() {
    delete meminst;
}


};//endmodule
#endif
