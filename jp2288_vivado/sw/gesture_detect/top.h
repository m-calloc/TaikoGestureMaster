/***************************************************************************
*   © Copyright 2013 Xilinx, Inc. All rights reserved. 
*   This file contains confidential and proprietary information of Xilinx,
*   Inc. and is protected under U.S. and international copyright and other
*   intellectual property laws. 
*   DISCLAIMER
*   This disclaimer is not a license and does not grant any rights to the
*   materials distributed herewith. Except as otherwise provided in a valid
*   license issued to you by Xilinx, and to the maximum extent permitted by
*   applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH
*   ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, 
*   EXPRESS, IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES
*   OF MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR 
*   PURPOSE; and (2) Xilinx shall not be liable (whether in contract or 
*   tort, including negligence, or under any other theory of liability)
*   for any loss or damage of any kind or nature related to, arising under
*   or in connection with these materials, including for any direct, or any
*   indirect, special, incidental, or consequential loss or damage (including
*   loss of data, profits, goodwill, or any type of loss or damage suffered 
*   as a result of any action brought by a third party) even if such damage
*   or loss was reasonably foreseeable or Xilinx had been advised of the 
*   possibility of the same. 
*   CRITICAL APPLICATIONS 
*   Xilinx products are not designed or intended to be fail-safe, or for use
*   in any application requiring fail-safe performance, such as life-support
*   or safety devices or systems, Class III medical devices, nuclear facilities,
*   applications related to the deployment of airbags, or any other applications
*   that could lead to death, personal injury, or severe property or environmental
*   damage (individually and collectively, "Critical Applications"). Customer
*   assumes the sole risk and liability of any use of Xilinx products in Critical
*   Applications, subject only to applicable laws and regulations governing 
*   limitations on product liability. 
*   THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT 
*   ALL TIMES.
***************************************************************************/

#ifndef _TOP_H_
#define _TOP_H_

#include "hls_video.h"
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_opencv.h"

// maximum image size
#define MAX_WIDTH  960
#define MAX_HEIGHT 1280

// I/O Image Settings
#define INPUT_IMAGE           "test_picture/p2.bmp"
#define OUTPUT_IMAGE          "test_picture/p2_o.bmp"
#define PAPER_RESULT          "result_picture/p.bmp"
#define SCISSOR_RESULT        "result_picture/s.bmp"
#define ROCK_RESULT           "result_picture/r.bmp"
// #define OUTPUT_IMAGE_GOLDEN   "test_picture/p2_golden.bmp"

// typedef video library core structures
typedef hls::stream<ap_axiu<32,1,1,1> >               AXI_STREAM;
typedef hls::Scalar<3, unsigned char>                 RGB_PIXEL;
typedef hls::Scalar<1, unsigned char>                 UC_PIXEL;
typedef hls::Scalar<3, unsigned char>                 YCBCR_PIXEL;

typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC3>     RGB_IMAGE;
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC1>     UC_IMAGE;
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC3>     YCBCR_IMAGE;

// constants for YCbCr coefficients
const ap_fixed<8,2,AP_RND_INF,AP_SAT> YCOEFFR = 0.299;
const ap_fixed<8,2,AP_RND_INF,AP_SAT> YCOEFFG = 0.587;
const ap_fixed<8,2,AP_RND_INF,AP_SAT> YCOEFFB = 0.114;

const ap_fixed<8,2,AP_RND_INF,AP_SAT> CBCOEFFR = 0.168;
const ap_fixed<8,2,AP_RND_INF,AP_SAT> CBCOEFFG = 0.331;
const ap_fixed<8,2,AP_RND_INF,AP_SAT> CBCOEFFB = 0.5;

const ap_fixed<8,2,AP_RND_INF,AP_SAT> CRCOEFFR = 0.5;
const ap_fixed<8,2,AP_RND_INF,AP_SAT> CRCOEFFG = 0.419;
const ap_fixed<8,2,AP_RND_INF,AP_SAT> CRCOEFFB = 0.0813;

// const ap_fixed<8,2,AP_RND_INF,AP_SAT> CBCOEFFR = 0.148;
// const ap_fixed<8,2,AP_RND_INF,AP_SAT> CBCOEFFG = 0.391;
// const ap_fixed<8,2,AP_RND_INF,AP_SAT> CBCOEFFB = 0.438;

// const ap_fixed<8,2,AP_RND_INF,AP_SAT> CRCOEFFR = 0.438;
// const ap_fixed<8,2,AP_RND_INF,AP_SAT> CRCOEFFG = 0.366;
// const ap_fixed<8,2,AP_RND_INF,AP_SAT> CRCOEFFB = 0.0711;

// top level function for Corner detection
void image_filter(AXI_STREAM& src_axi, AXI_STREAM& dst_axi, int rows, int cols, IplImage* paper_res, IplImage* scissor_res, IplImage* rock_res);
void Rgb2ycbcr   (RGB_IMAGE& , UC_IMAGE&);
void median_filter(UC_IMAGE& src, UC_IMAGE& dst);
int finger_counter_test(UC_IMAGE& src, RGB_IMAGE& dst); 
int finger_counter_demo(UC_IMAGE& src);
#endif
