/*
OpenCL RandomForestClassifier
classifier_class_name = ObjectSegmenter
feature_specification = original gaussian_blur=1 gaussian_blur=2 gaussian_blur=3 gaussian_blur=4 gaussian_blur=5 difference_of_gaussian=1 difference_of_gaussian=2 difference_of_gaussian=3 difference_of_gaussian=4 difference_of_gaussian=5 laplace_box_of_gaussian_blur=1 laplace_box_of_gaussian_blur=2 laplace_box_of_gaussian_blur=3 laplace_box_of_gaussian_blur=4 laplace_box_of_gaussian_blur=5
num_ground_truth_dimensions = 2
num_classes = 2
num_features = 16
max_depth = 2
num_trees = 100
feature_importances = 0.02988983590008413,0.0382598852481283,0.03583006389737841,0.025014163282522688,0.002658614651665677,0.0,0.002230329297571424,0.0087543922764518,0.15666580341897585,0.18261800398823827,0.06623518723620654,0.00046945604868575165,0.03763774873221375,0.1687939738599671,0.19485200930315982,0.05009053285875048
positive_class_identifier = 2
apoc_version = 0.12.0
*/
__kernel void predict (IMAGE_in0_TYPE in0, IMAGE_in1_TYPE in1, IMAGE_in2_TYPE in2, IMAGE_in3_TYPE in3, IMAGE_in4_TYPE in4, IMAGE_in5_TYPE in5, IMAGE_in6_TYPE in6, IMAGE_in7_TYPE in7, IMAGE_in8_TYPE in8, IMAGE_in9_TYPE in9, IMAGE_in10_TYPE in10, IMAGE_in11_TYPE in11, IMAGE_in12_TYPE in12, IMAGE_in13_TYPE in13, IMAGE_in14_TYPE in14, IMAGE_in15_TYPE in15, IMAGE_out_TYPE out) {
 sampler_t sampler = CLK_NORMALIZED_COORDS_FALSE | CLK_ADDRESS_CLAMP_TO_EDGE | CLK_FILTER_NEAREST;
 const int x = get_global_id(0);
 const int y = get_global_id(1);
 const int z = get_global_id(2);
 float i0 = READ_IMAGE(in0, sampler, POS_in0_INSTANCE(x,y,z,0)).x;
 float i1 = READ_IMAGE(in1, sampler, POS_in1_INSTANCE(x,y,z,0)).x;
 float i2 = READ_IMAGE(in2, sampler, POS_in2_INSTANCE(x,y,z,0)).x;
 float i3 = READ_IMAGE(in3, sampler, POS_in3_INSTANCE(x,y,z,0)).x;
 float i4 = READ_IMAGE(in4, sampler, POS_in4_INSTANCE(x,y,z,0)).x;
 float i5 = READ_IMAGE(in5, sampler, POS_in5_INSTANCE(x,y,z,0)).x;
 float i6 = READ_IMAGE(in6, sampler, POS_in6_INSTANCE(x,y,z,0)).x;
 float i7 = READ_IMAGE(in7, sampler, POS_in7_INSTANCE(x,y,z,0)).x;
 float i8 = READ_IMAGE(in8, sampler, POS_in8_INSTANCE(x,y,z,0)).x;
 float i9 = READ_IMAGE(in9, sampler, POS_in9_INSTANCE(x,y,z,0)).x;
 float i10 = READ_IMAGE(in10, sampler, POS_in10_INSTANCE(x,y,z,0)).x;
 float i11 = READ_IMAGE(in11, sampler, POS_in11_INSTANCE(x,y,z,0)).x;
 float i12 = READ_IMAGE(in12, sampler, POS_in12_INSTANCE(x,y,z,0)).x;
 float i13 = READ_IMAGE(in13, sampler, POS_in13_INSTANCE(x,y,z,0)).x;
 float i14 = READ_IMAGE(in14, sampler, POS_in14_INSTANCE(x,y,z,0)).x;
 float i15 = READ_IMAGE(in15, sampler, POS_in15_INSTANCE(x,y,z,0)).x;
 float s0=0;
 float s1=0;
if(i15<283.16796875){
 if(i13<1022.2412109375){
  s0+=3077.0;
  s1+=142.0;
 } else {
  s1+=7.0;
 }
} else {
 if(i12<1988.591796875){
  s0+=52.0;
  s1+=41.0;
 } else {
  s0+=5.0;
  s1+=92.0;
 }
}
if(i13<945.509765625){
 if(i9<423.5458984375){
  s0+=2979.0;
  s1+=133.0;
 } else {
  s0+=100.0;
  s1+=40.0;
 }
} else {
 if(i15<308.04296875){
  s0+=19.0;
  s1+=21.0;
 } else {
  s0+=10.0;
  s1+=114.0;
 }
}
if(i13<1024.4453125){
 if(i0<17761.0){
  s0+=2700.0;
  s1+=47.0;
 } else {
  s0+=443.0;
  s1+=135.0;
 }
} else {
 if(i8<661.078125){
  s0+=11.0;
  s1+=10.0;
 } else {
  s0+=4.0;
  s1+=66.0;
 }
}
if(i13<941.5947265625){
 if(i2<20746.59375){
  s0+=3106.0;
  s1+=161.0;
 } else {
  s1+=14.0;
 }
} else {
 if(i4<19471.46875){
  s0+=22.0;
  s1+=61.0;
 } else {
  s1+=52.0;
 }
}
if(i15<305.984375){
 if(i13<973.349609375){
  s0+=3099.0;
  s1+=142.0;
 } else {
  s0+=5.0;
  s1+=13.0;
 }
} else {
 if(i7<203.3125){
  s0+=27.0;
  s1+=5.0;
 } else {
  s0+=9.0;
  s1+=116.0;
 }
}
if(i2<20762.658203125){
 if(i9<484.013671875){
  s0+=3091.0;
  s1+=147.0;
 } else {
  s0+=29.0;
  s1+=47.0;
 }
} else {
 if(i10<518.984375){
  s0+=8.0;
 } else {
  s0+=9.0;
  s1+=85.0;
 }
}
if(i12<2062.806640625){
 if(i10<545.7353515625){
  s0+=3098.0;
  s1+=164.0;
 } else {
  s0+=12.0;
  s1+=33.0;
 }
} else {
 if(i8<584.0927734375){
  s0+=7.0;
 } else {
  s0+=12.0;
  s1+=90.0;
 }
}
if(i14<482.59375){
 if(i9<-83.73876953125){
  s0+=1292.0;
 } else {
  s0+=1836.0;
  s1+=124.0;
 }
} else {
 if(i12<1708.30859375){
  s0+=26.0;
  s1+=29.0;
 } else {
  s0+=8.0;
  s1+=101.0;
 }
}
if(i8<582.34033203125){
 if(i2<20757.6328125){
  s0+=3132.0;
  s1+=153.0;
 } else {
  s1+=10.0;
 }
} else {
 if(i14<659.830078125){
  s0+=19.0;
  s1+=49.0;
 } else {
  s1+=53.0;
 }
}
if(i13<945.509765625){
 if(i10<502.3046875){
  s0+=3094.0;
  s1+=128.0;
 } else {
  s0+=28.0;
  s1+=36.0;
 }
} else {
 if(i8<678.20947265625){
  s0+=20.0;
  s1+=30.0;
 } else {
  s0+=5.0;
  s1+=75.0;
 }
}
if(i13<847.8994140625){
 if(i8<-64.9599609375){
  s0+=1467.0;
  s1+=3.0;
 } else {
  s0+=1630.0;
  s1+=165.0;
 }
} else {
 if(i14<659.587890625){
  s0+=41.0;
  s1+=55.0;
 } else {
  s1+=55.0;
 }
}
if(i14<473.33544921875){
 if(i0<17775.5){
  s0+=2603.0;
  s1+=49.0;
 } else {
  s0+=480.0;
  s1+=113.0;
 }
} else {
 if(i7<400.1513671875){
  s0+=23.0;
  s1+=10.0;
 } else {
  s0+=17.0;
  s1+=121.0;
 }
}
if(i14<486.6865234375){
 if(i1<15650.259765625){
  s0+=2146.0;
  s1+=54.0;
 } else {
  s0+=982.0;
  s1+=83.0;
 }
} else {
 if(i6<460.43359375){
  s0+=27.0;
  s1+=62.0;
 } else {
  s1+=62.0;
 }
}
if(i8<454.140625){
 if(i0<17753.0){
  s0+=2629.0;
  s1+=47.0;
 } else {
  s0+=417.0;
  s1+=100.0;
 }
} else {
 if(i9<519.59521484375){
  s0+=42.0;
  s1+=15.0;
 } else {
  s0+=30.0;
  s1+=136.0;
 }
}
if(i13<935.5390625){
 if(i14<486.6865234375){
  s0+=3089.0;
  s1+=146.0;
 } else {
  s0+=15.0;
  s1+=26.0;
 }
} else {
 if(i10<583.6259765625){
  s0+=22.0;
  s1+=54.0;
 } else {
  s0+=2.0;
  s1+=62.0;
 }
}
if(i10<502.1357421875){
 if(i8<-64.388671875){
  s0+=1563.0;
  s1+=3.0;
 } else {
  s0+=1543.0;
  s1+=147.0;
 }
} else {
 if(i8<430.6796875){
  s0+=26.0;
  s1+=1.0;
 } else {
  s0+=20.0;
  s1+=113.0;
 }
}
if(i13<1005.5458984375){
 if(i14<481.3623046875){
  s0+=3075.0;
  s1+=164.0;
 } else {
  s0+=22.0;
  s1+=25.0;
 }
} else {
 if(i14<643.53125){
  s0+=14.0;
  s1+=54.0;
 } else {
  s1+=62.0;
 }
}
if(i9<526.37109375){
 if(i0<18139.5){
  s0+=2668.0;
  s1+=54.0;
 } else {
  s0+=436.0;
  s1+=104.0;
 }
} else {
 if(i15<297.2666015625){
  s0+=9.0;
  s1+=9.0;
 } else {
  s0+=11.0;
  s1+=125.0;
 }
}
if(i12<1975.51953125){
 if(i13<865.3134765625){
  s0+=3094.0;
  s1+=156.0;
 } else {
  s0+=14.0;
  s1+=29.0;
 }
} else {
 if(i14<482.0498046875){
  s0+=19.0;
  s1+=7.0;
 } else {
  s0+=9.0;
  s1+=88.0;
 }
}
if(i9<524.35546875){
 if(i8<-96.84912109375){
  s0+=1279.0;
  s1+=1.0;
 } else {
  s0+=1838.0;
  s1+=155.0;
 }
} else {
 if(i12<1789.8974609375){
  s0+=21.0;
  s1+=21.0;
 } else {
  s0+=10.0;
  s1+=91.0;
 }
}
if(i8<578.80029296875){
 if(i8<-78.26123046875){
  s0+=1404.0;
  s1+=3.0;
 } else {
  s0+=1680.0;
  s1+=190.0;
 }
} else {
 if(i8<673.203125){
  s0+=26.0;
  s1+=25.0;
 } else {
  s0+=9.0;
  s1+=79.0;
 }
}
if(i14<481.3623046875){
 if(i12<2370.2177734375){
  s0+=3082.0;
  s1+=148.0;
 } else {
  s0+=8.0;
  s1+=12.0;
 }
} else {
 if(i12<447.091796875){
  s0+=7.0;
 } else {
  s0+=30.0;
  s1+=129.0;
 }
}
if(i8<528.8173828125){
 if(i9<423.5458984375){
  s0+=3018.0;
  s1+=133.0;
 } else {
  s0+=71.0;
  s1+=32.0;
 }
} else {
 if(i9<524.958984375){
  s0+=16.0;
  s1+=4.0;
 } else {
  s0+=23.0;
  s1+=119.0;
 }
}
if(i3<19952.8125){
 if(i8<557.25048828125){
  s0+=3069.0;
  s1+=171.0;
 } else {
  s0+=26.0;
  s1+=42.0;
 }
} else {
 if(i6<-405.4228515625){
  s0+=9.0;
  s1+=2.0;
 } else {
  s0+=9.0;
  s1+=88.0;
 }
}
if(i13<884.013671875){
 if(i8<-64.98876953125){
  s0+=1555.0;
  s1+=4.0;
 } else {
  s0+=1534.0;
  s1+=144.0;
 }
} else {
 if(i12<1988.591796875){
  s0+=23.0;
  s1+=23.0;
 } else {
  s0+=12.0;
  s1+=121.0;
 }
}
if(i9<502.3505859375){
 if(i1<15700.716796875){
  s0+=2215.0;
  s1+=76.0;
 } else {
  s0+=888.0;
  s1+=96.0;
 }
} else {
 if(i4<19519.76171875){
  s0+=29.0;
  s1+=64.0;
 } else {
  s1+=48.0;
 }
}
if(i1<20346.8515625){
 if(i8<557.9013671875){
  s0+=3087.0;
  s1+=126.0;
 } else {
  s0+=1.0;
  s1+=13.0;
 }
} else {
 if(i9<510.93359375){
  s0+=56.0;
  s1+=5.0;
 } else {
  s0+=15.0;
  s1+=113.0;
 }
}
if(i9<524.35546875){
 if(i13<-96.1611328125){
  s0+=1617.0;
  s1+=3.0;
 } else {
  s0+=1481.0;
  s1+=149.0;
 }
} else {
 if(i8<678.20947265625){
  s0+=36.0;
  s1+=47.0;
 } else {
  s0+=3.0;
  s1+=80.0;
 }
}
if(i14<475.7890625){
 if(i12<2386.1533203125){
  s0+=3114.0;
  s1+=143.0;
 } else {
  s0+=1.0;
  s1+=7.0;
 }
} else {
 if(i13<1120.0068359375){
  s0+=38.0;
  s1+=37.0;
 } else {
  s0+=6.0;
  s1+=70.0;
 }
}
if(i13<865.3134765625){
 if(i9<517.78125){
  s0+=3091.0;
  s1+=143.0;
 } else {
  s0+=7.0;
  s1+=12.0;
 }
} else {
 if(i10<550.9892578125){
  s0+=27.0;
  s1+=37.0;
 } else {
  s0+=5.0;
  s1+=94.0;
 }
}
if(i10<517.85302734375){
 if(i0<17080.5){
  s0+=2520.0;
  s1+=44.0;
 } else {
  s0+=578.0;
  s1+=123.0;
 }
} else {
 if(i1<19720.08984375){
  s0+=23.0;
  s1+=2.0;
 } else {
  s0+=18.0;
  s1+=108.0;
 }
}
if(i13<726.89794921875){
 if(i0<18772.0){
  s0+=2717.0;
  s1+=63.0;
 } else {
  s0+=322.0;
  s1+=93.0;
 }
} else {
 if(i15<329.3857421875){
  s0+=56.0;
  s1+=51.0;
 } else {
  s0+=12.0;
  s1+=102.0;
 }
}
if(i14<463.349609375){
 if(i0<16268.5){
  s0+=2360.0;
  s1+=20.0;
 } else {
  s0+=744.0;
  s1+=134.0;
 }
} else {
 if(i9<629.6962890625){
  s0+=30.0;
  s1+=44.0;
 } else {
  s0+=3.0;
  s1+=81.0;
 }
}
if(i9<501.9775390625){
 if(i0<17739.5){
  s0+=2627.0;
  s1+=58.0;
 } else {
  s0+=440.0;
  s1+=108.0;
 }
} else {
 if(i6<-366.6376953125){
  s0+=9.0;
  s1+=3.0;
 } else {
  s0+=27.0;
  s1+=144.0;
 }
}
if(i10<502.3046875){
 if(i7<732.3046875){
  s0+=3072.0;
  s1+=160.0;
 } else {
  s0+=1.0;
  s1+=9.0;
 }
} else {
 if(i7<184.5966796875){
  s0+=27.0;
  s1+=2.0;
 } else {
  s0+=18.0;
  s1+=127.0;
 }
}
if(i9<519.59521484375){
 if(i0<17777.0){
  s0+=2633.0;
  s1+=53.0;
 } else {
  s0+=443.0;
  s1+=109.0;
 }
} else {
 if(i13<1075.9189453125){
  s0+=33.0;
  s1+=42.0;
 } else {
  s0+=7.0;
  s1+=96.0;
 }
}
if(i3<19769.958984375){
 if(i13<935.6064453125){
  s0+=3099.0;
  s1+=142.0;
 } else {
  s0+=9.0;
  s1+=41.0;
 }
} else {
 if(i9<635.5751953125){
  s0+=20.0;
  s1+=16.0;
 } else {
  s0+=5.0;
  s1+=84.0;
 }
}
if(i14<475.7890625){
 if(i8<-64.98876953125){
  s0+=1567.0;
  s1+=4.0;
 } else {
  s0+=1510.0;
  s1+=153.0;
 }
} else {
 if(i9<703.900390625){
  s0+=37.0;
  s1+=66.0;
 } else {
  s0+=2.0;
  s1+=77.0;
 }
}
if(i14<527.634765625){
 if(i12<2460.4462890625){
  s0+=3141.0;
  s1+=146.0;
 } else {
  s0+=2.0;
  s1+=10.0;
 }
} else {
 if(i9<649.103515625){
  s0+=15.0;
  s1+=26.0;
 } else {
  s0+=5.0;
  s1+=71.0;
 }
}
if(i8<571.8828125){
 if(i3<19792.3125){
  s0+=3089.0;
  s1+=159.0;
 } else {
  s0+=7.0;
  s1+=17.0;
 }
} else {
 if(i14<660.4326171875){
  s0+=27.0;
  s1+=59.0;
 } else {
  s1+=58.0;
 }
}
if(i8<584.0927734375){
 if(i3<19956.078125){
  s0+=3121.0;
  s1+=137.0;
 } else {
  s0+=5.0;
  s1+=15.0;
 }
} else {
 if(i8<661.056640625){
  s0+=12.0;
  s1+=27.0;
 } else {
  s0+=6.0;
  s1+=93.0;
 }
}
if(i13<1014.02392578125){
 if(i15<272.341796875){
  s0+=3085.0;
  s1+=136.0;
 } else {
  s0+=51.0;
  s1+=36.0;
 }
} else {
 if(i10<615.638671875){
  s0+=15.0;
  s1+=42.0;
 } else {
  s1+=51.0;
 }
}
if(i9<484.0078125){
 if(i9<-83.61376953125){
  s0+=1301.0;
  s1+=1.0;
 } else {
  s0+=1762.0;
  s1+=163.0;
 }
} else {
 if(i15<349.8642578125){
  s0+=35.0;
  s1+=53.0;
 } else {
  s0+=8.0;
  s1+=93.0;
 }
}
if(i1<21724.55078125){
 if(i0<17761.0){
  s0+=2587.0;
  s1+=57.0;
 } else {
  s0+=494.0;
  s1+=142.0;
 }
} else {
 if(i2<21395.55859375){
  s0+=27.0;
  s1+=21.0;
 } else {
  s0+=5.0;
  s1+=83.0;
 }
}
if(i15<305.984375){
 if(i9<423.5458984375){
  s0+=3012.0;
  s1+=121.0;
 } else {
  s0+=90.0;
  s1+=39.0;
 }
} else {
 if(i8<480.28515625){
  s0+=24.0;
  s1+=4.0;
 } else {
  s0+=13.0;
  s1+=113.0;
 }
}
if(i14<481.3623046875){
 if(i0<17738.0){
  s0+=2611.0;
  s1+=38.0;
 } else {
  s0+=498.0;
  s1+=103.0;
 }
} else {
 if(i12<840.736328125){
  s0+=15.0;
  s1+=8.0;
 } else {
  s0+=15.0;
  s1+=128.0;
 }
}
if(i9<516.4228515625){
 if(i8<-64.9599609375){
  s0+=1561.0;
  s1+=4.0;
 } else {
  s0+=1537.0;
  s1+=156.0;
 }
} else {
 if(i2<21739.75){
  s0+=29.0;
  s1+=57.0;
 } else {
  s0+=2.0;
  s1+=70.0;
 }
}
if(i9<569.51953125){
 if(i9<349.88134765625){
  s0+=2941.0;
  s1+=111.0;
 } else {
  s0+=186.0;
  s1+=44.0;
 }
} else {
 if(i1<18798.857421875){
  s0+=5.0;
 } else {
  s0+=17.0;
  s1+=112.0;
 }
}
if(i12<1975.51953125){
 if(i15<304.7607421875){
  s0+=3093.0;
  s1+=132.0;
 } else {
  s0+=29.0;
  s1+=42.0;
 }
} else {
 if(i13<947.859375){
  s0+=21.0;
  s1+=2.0;
 } else {
  s0+=13.0;
  s1+=84.0;
 }
}
if(i15<308.564453125){
 if(i14<391.7080078125){
  s0+=2981.0;
  s1+=147.0;
 } else {
  s0+=88.0;
  s1+=40.0;
 }
} else {
 if(i7<90.99609375){
  s0+=20.0;
  s1+=1.0;
 } else {
  s0+=21.0;
  s1+=118.0;
 }
}
if(i14<472.79443359375){
 if(i9<-83.61376953125){
  s0+=1366.0;
  s1+=1.0;
 } else {
  s0+=1729.0;
  s1+=143.0;
 }
} else {
 if(i12<2394.5517578125){
  s0+=47.0;
  s1+=62.0;
 } else {
  s0+=3.0;
  s1+=65.0;
 }
}
if(i14<482.59375){
 if(i0<15906.5){
  s0+=2300.0;
  s1+=19.0;
 } else {
  s0+=811.0;
  s1+=107.0;
 }
} else {
 if(i9<629.0185546875){
  s0+=24.0;
  s1+=37.0;
 } else {
  s0+=5.0;
  s1+=113.0;
 }
}
if(i2<20757.6328125){
 if(i8<557.9013671875){
  s0+=3101.0;
  s1+=158.0;
 } else {
  s0+=12.0;
  s1+=45.0;
 }
} else {
 if(i9<648.75){
  s0+=12.0;
  s1+=13.0;
 } else {
  s0+=5.0;
  s1+=70.0;
 }
}
if(i8<528.8173828125){
 if(i10<422.43115234375){
  s0+=3026.0;
  s1+=125.0;
 } else {
  s0+=66.0;
  s1+=27.0;
 }
} else {
 if(i13<1120.0068359375){
  s0+=33.0;
  s1+=56.0;
 } else {
  s0+=6.0;
  s1+=77.0;
 }
}
if(i2<20757.6328125){
 if(i0<17738.0){
  s0+=2591.0;
  s1+=49.0;
 } else {
  s0+=507.0;
  s1+=151.0;
 }
} else {
 if(i4<19465.8359375){
  s0+=17.0;
  s1+=39.0;
 } else {
  s0+=1.0;
  s1+=61.0;
 }
}
if(i14<481.3623046875){
 if(i7<670.5634765625){
  s0+=3120.0;
  s1+=134.0;
 } else {
  s0+=7.0;
  s1+=10.0;
 }
} else {
 if(i2<21758.3046875){
  s0+=24.0;
  s1+=56.0;
 } else {
  s0+=1.0;
  s1+=64.0;
 }
}
if(i8<578.80029296875){
 if(i0<15991.5){
  s0+=2330.0;
  s1+=14.0;
 } else {
  s0+=803.0;
  s1+=139.0;
 }
} else {
 if(i13<1022.2412109375){
  s0+=10.0;
  s1+=10.0;
 } else {
  s0+=7.0;
  s1+=103.0;
 }
}
if(i13<884.013671875){
 if(i3<19788.66796875){
  s0+=3079.0;
  s1+=160.0;
 } else {
  s0+=7.0;
  s1+=13.0;
 }
} else {
 if(i8<674.78515625){
  s0+=32.0;
  s1+=46.0;
 } else {
  s0+=3.0;
  s1+=76.0;
 }
}
if(i14<481.3623046875){
 if(i0<16774.5){
  s0+=2505.0;
  s1+=46.0;
 } else {
  s0+=580.0;
  s1+=129.0;
 }
} else {
 if(i14<589.2685546875){
  s0+=33.0;
  s1+=34.0;
 } else {
  s0+=2.0;
  s1+=87.0;
 }
}
if(i9<516.4228515625){
 if(i0<17761.0){
  s0+=2650.0;
  s1+=56.0;
 } else {
  s0+=445.0;
  s1+=102.0;
 }
} else {
 if(i2<21467.9140625){
  s0+=34.0;
  s1+=61.0;
 } else {
  s0+=2.0;
  s1+=66.0;
 }
}
if(i14<480.818359375){
 if(i0<17739.5){
  s0+=2600.0;
  s1+=58.0;
 } else {
  s0+=464.0;
  s1+=119.0;
 }
} else {
 if(i12<1997.3291015625){
  s0+=29.0;
  s1+=53.0;
 } else {
  s0+=7.0;
  s1+=86.0;
 }
}
if(i15<293.5634765625){
 if(i8<-61.70068359375){
  s0+=1539.0;
  s1+=4.0;
 } else {
  s0+=1538.0;
  s1+=151.0;
 }
} else {
 if(i13<1070.216796875){
  s0+=44.0;
  s1+=49.0;
 } else {
  s0+=9.0;
  s1+=82.0;
 }
}
if(i10<460.96728515625){
 if(i12<2386.1533203125){
  s0+=3056.0;
  s1+=136.0;
 } else {
  s0+=4.0;
  s1+=14.0;
 }
} else {
 if(i8<386.978515625){
  s0+=26.0;
  s1+=1.0;
 } else {
  s0+=40.0;
  s1+=139.0;
 }
}
if(i13<865.3134765625){
 if(i9<423.5458984375){
  s0+=3030.0;
  s1+=122.0;
 } else {
  s0+=84.0;
  s1+=33.0;
 }
} else {
 if(i9<699.146484375){
  s0+=27.0;
  s1+=55.0;
 } else {
  s0+=1.0;
  s1+=64.0;
 }
}
if(i1<20898.205078125){
 if(i9<513.9208984375){
  s0+=3106.0;
  s1+=128.0;
 } else {
  s0+=11.0;
  s1+=13.0;
 }
} else {
 if(i15<268.9951171875){
  s0+=34.0;
  s1+=1.0;
 } else {
  s0+=24.0;
  s1+=99.0;
 }
}
if(i1<21091.28515625){
 if(i8<529.6650390625){
  s0+=3091.0;
  s1+=145.0;
 } else {
  s0+=8.0;
  s1+=26.0;
 }
} else {
 if(i12<2713.5390625){
  s0+=41.0;
  s1+=54.0;
 } else {
  s1+=51.0;
 }
}
if(i8<582.34033203125){
 if(i10<461.318359375){
  s0+=3057.0;
  s1+=143.0;
 } else {
  s0+=34.0;
  s1+=38.0;
 }
} else {
 if(i7<543.212890625){
  s0+=16.0;
  s1+=24.0;
 } else {
  s0+=10.0;
  s1+=94.0;
 }
}
if(i9<524.35546875){
 if(i13<-106.9345703125){
  s0+=1484.0;
  s1+=5.0;
 } else {
  s0+=1597.0;
  s1+=163.0;
 }
} else {
 if(i6<-579.7353515625){
  s0+=5.0;
 } else {
  s0+=30.0;
  s1+=132.0;
 }
}
if(i12<2161.1044921875){
 if(i14<479.365234375){
  s0+=3071.0;
  s1+=165.0;
 } else {
  s0+=24.0;
  s1+=50.0;
 }
} else {
 if(i3<19962.87890625){
  s0+=15.0;
  s1+=34.0;
 } else {
  s0+=1.0;
  s1+=56.0;
 }
}
if(i13<998.6123046875){
 if(i9<473.513671875){
  s0+=3053.0;
  s1+=148.0;
 } else {
  s0+=58.0;
  s1+=34.0;
 }
} else {
 if(i12<1119.6015625){
  s0+=1.0;
 } else {
  s0+=10.0;
  s1+=112.0;
 }
}
if(i8<621.94921875){
 if(i0<17712.0){
  s0+=2657.0;
  s1+=55.0;
 } else {
  s0+=484.0;
  s1+=120.0;
 }
} else {
 if(i7<759.6572265625){
  s0+=7.0;
  s1+=41.0;
 } else {
  s1+=52.0;
 }
}
if(i8<584.0927734375){
 if(i13<709.5244140625){
  s0+=3038.0;
  s1+=148.0;
 } else {
  s0+=63.0;
  s1+=34.0;
 }
} else {
 if(i13<998.6123046875){
  s0+=14.0;
  s1+=14.0;
 } else {
  s0+=10.0;
  s1+=95.0;
 }
}
if(i10<461.318359375){
 if(i8<-64.9208984375){
  s0+=1546.0;
  s1+=6.0;
 } else {
  s0+=1505.0;
  s1+=161.0;
 }
} else {
 if(i1<19378.0546875){
  s0+=25.0;
  s1+=2.0;
 } else {
  s0+=33.0;
  s1+=138.0;
 }
}
if(i9<525.50390625){
 if(i0<17761.0){
  s0+=2675.0;
  s1+=42.0;
 } else {
  s0+=446.0;
  s1+=109.0;
 }
} else {
 if(i8<521.8291015625){
  s0+=11.0;
  s1+=5.0;
 } else {
  s0+=22.0;
  s1+=106.0;
 }
}
if(i14<481.3623046875){
 if(i13<-103.88818359375){
  s0+=1496.0;
  s1+=6.0;
 } else {
  s0+=1590.0;
  s1+=145.0;
 }
} else {
 if(i8<605.5751953125){
  s0+=23.0;
  s1+=26.0;
 } else {
  s0+=11.0;
  s1+=119.0;
 }
}
if(i3<19952.8125){
 if(i10<460.96728515625){
  s0+=3051.0;
  s1+=145.0;
 } else {
  s0+=68.0;
  s1+=32.0;
 }
} else {
 if(i15<341.6162109375){
  s0+=12.0;
  s1+=4.0;
 } else {
  s0+=6.0;
  s1+=98.0;
 }
}
if(i14<438.810546875){
 if(i13<-99.7138671875){
  s0+=1576.0;
  s1+=10.0;
 } else {
  s0+=1509.0;
  s1+=129.0;
 }
} else {
 if(i13<1022.2412109375){
  s0+=39.0;
  s1+=41.0;
 } else {
  s0+=7.0;
  s1+=105.0;
 }
}
if(i13<875.955078125){
 if(i9<501.1435546875){
  s0+=3070.0;
  s1+=155.0;
 } else {
  s0+=16.0;
  s1+=21.0;
 }
} else {
 if(i8<642.26171875){
  s0+=19.0;
  s1+=31.0;
 } else {
  s0+=4.0;
  s1+=100.0;
 }
}
if(i9<516.4228515625){
 if(i8<-64.9208984375){
  s0+=1511.0;
  s1+=8.0;
 } else {
  s0+=1565.0;
  s1+=156.0;
 }
} else {
 if(i2<21758.3046875){
  s0+=42.0;
  s1+=57.0;
 } else {
  s0+=3.0;
  s1+=74.0;
 }
}
if(i9<519.59521484375){
 if(i8<-64.388671875){
  s0+=1491.0;
  s1+=8.0;
 } else {
  s0+=1622.0;
  s1+=138.0;
 }
} else {
 if(i14<583.291015625){
  s0+=30.0;
  s1+=25.0;
 } else {
  s0+=7.0;
  s1+=95.0;
 }
}
if(i10<484.0283203125){
 if(i8<634.130859375){
  s0+=3081.0;
  s1+=168.0;
 } else {
  s1+=9.0;
 }
} else {
 if(i7<77.5888671875){
  s0+=21.0;
 } else {
  s0+=16.0;
  s1+=121.0;
 }
}
if(i1<20837.31640625){
 if(i9<519.59521484375){
  s0+=3046.0;
  s1+=168.0;
 } else {
  s0+=12.0;
  s1+=21.0;
 }
} else {
 if(i4<19063.76171875){
  s0+=47.0;
  s1+=31.0;
 } else {
  s0+=7.0;
  s1+=84.0;
 }
}
if(i14<475.7890625){
 if(i14<-78.3310546875){
  s0+=1245.0;
  s1+=1.0;
 } else {
  s0+=1850.0;
  s1+=152.0;
 }
} else {
 if(i14<594.2705078125){
  s0+=37.0;
  s1+=53.0;
 } else {
  s0+=4.0;
  s1+=74.0;
 }
}
if(i14<473.33544921875){
 if(i6<490.0478515625){
  s0+=3049.0;
  s1+=139.0;
 } else {
  s0+=61.0;
  s1+=15.0;
 }
} else {
 if(i8<674.78515625){
  s0+=32.0;
  s1+=31.0;
 } else {
  s0+=6.0;
  s1+=83.0;
 }
}
if(i9<524.35546875){
 if(i9<-83.70068359375){
  s0+=1261.0;
 } else {
  s0+=1844.0;
  s1+=166.0;
 }
} else {
 if(i9<648.75){
  s0+=25.0;
  s1+=38.0;
 } else {
  s0+=6.0;
  s1+=76.0;
 }
}
if(i14<475.7890625){
 if(i7<667.40234375){
  s0+=3102.0;
  s1+=148.0;
 } else {
  s0+=3.0;
  s1+=8.0;
 }
} else {
 if(i12<2712.8330078125){
  s0+=36.0;
  s1+=71.0;
 } else {
  s1+=48.0;
 }
}
if(i9<520.95361328125){
 if(i9<-83.0546875){
  s0+=1293.0;
  s1+=1.0;
 } else {
  s0+=1820.0;
  s1+=144.0;
 }
} else {
 if(i2<22160.234375){
  s0+=40.0;
  s1+=73.0;
 } else {
  s1+=45.0;
 }
}
if(i9<519.59521484375){
 if(i8<-64.9208984375){
  s0+=1533.0;
  s1+=2.0;
 } else {
  s0+=1563.0;
  s1+=151.0;
 }
} else {
 if(i6<-382.1982421875){
  s0+=11.0;
  s1+=6.0;
 } else {
  s0+=20.0;
  s1+=130.0;
 }
}
if(i2<20762.658203125){
 if(i10<460.96728515625){
  s0+=3045.0;
  s1+=163.0;
 } else {
  s0+=55.0;
  s1+=50.0;
 }
} else {
 if(i4<19465.8359375){
  s0+=16.0;
  s1+=27.0;
 } else {
  s1+=60.0;
 }
}
if(i13<752.544921875){
 if(i9<-83.0546875){
  s0+=1277.0;
 } else {
  s0+=1776.0;
  s1+=146.0;
 }
} else {
 if(i8<621.7392578125){
  s0+=52.0;
  s1+=48.0;
 } else {
  s0+=11.0;
  s1+=106.0;
 }
}
if(i8<455.5537109375){
 if(i9<-83.61376953125){
  s0+=1289.0;
  s1+=1.0;
 } else {
  s0+=1781.0;
  s1+=145.0;
 }
} else {
 if(i13<1009.8828125){
  s0+=55.0;
  s1+=44.0;
 } else {
  s0+=6.0;
  s1+=95.0;
 }
}
if(i13<780.19873046875){
 if(i0<18467.5){
  s0+=2673.0;
  s1+=59.0;
 } else {
  s0+=356.0;
  s1+=106.0;
 }
} else {
 if(i9<648.75){
  s0+=58.0;
  s1+=63.0;
 } else {
  s0+=5.0;
  s1+=96.0;
 }
}
if(i10<493.3115234375){
 if(i10<-82.734375){
  s0+=1192.0;
  s1+=2.0;
 } else {
  s0+=1894.0;
  s1+=159.0;
 }
} else {
 if(i13<739.7646484375){
  s0+=18.0;
  s1+=2.0;
 } else {
  s0+=23.0;
  s1+=126.0;
 }
}
if(i13<945.509765625){
 if(i2<20757.6328125){
  s0+=3096.0;
  s1+=152.0;
 } else {
  s0+=2.0;
  s1+=15.0;
 }
} else {
 if(i9<719.8505859375){
  s0+=32.0;
  s1+=66.0;
 } else {
  s1+=53.0;
 }
}
if(i14<486.6865234375){
 if(i9<423.5458984375){
  s0+=3025.0;
  s1+=132.0;
 } else {
  s0+=70.0;
  s1+=27.0;
 }
} else {
 if(i11<-4636.9677734375){
  s0+=8.0;
  s1+=1.0;
 } else {
  s0+=22.0;
  s1+=131.0;
 }
}
if(i14<461.298828125){
 if(i12<-192.2724609375){
  s0+=1590.0;
  s1+=12.0;
 } else {
  s0+=1535.0;
  s1+=133.0;
 }
} else {
 if(i8<606.0439453125){
  s0+=25.0;
  s1+=16.0;
 } else {
  s0+=11.0;
  s1+=94.0;
 }
}
if(i8<582.34033203125){
 if(i2<20462.828125){
  s0+=3124.0;
  s1+=139.0;
 } else {
  s0+=12.0;
  s1+=21.0;
 }
} else {
 if(i12<1745.5849609375){
  s0+=10.0;
  s1+=3.0;
 } else {
  s0+=15.0;
  s1+=92.0;
 }
}
if(i8<623.0390625){
 if(i8<-61.70068359375){
  s0+=1541.0;
  s1+=4.0;
 } else {
  s0+=1580.0;
  s1+=179.0;
 }
} else {
 if(i14<659.587890625){
  s0+=13.0;
  s1+=43.0;
 } else {
  s1+=56.0;
 }
}
if(i8<447.35693359375){
 if(i9<-79.0791015625){
  s0+=1334.0;
  s1+=1.0;
 } else {
  s0+=1724.0;
  s1+=114.0;
 }
} else {
 if(i15<339.7412109375){
  s0+=79.0;
  s1+=66.0;
 } else {
  s0+=8.0;
  s1+=90.0;
 }
}
if(i9<520.16357421875){
 if(i9<-83.61376953125){
  s0+=1292.0;
 } else {
  s0+=1791.0;
  s1+=147.0;
 }
} else {
 if(i13<1076.1796875){
  s0+=33.0;
  s1+=47.0;
 } else {
  s0+=8.0;
  s1+=98.0;
 }
}
 float max_s=s0;
 int cls=1;
 if (max_s < s1) {
  max_s = s1;
  cls=2;
 }
 WRITE_IMAGE (out, POS_out_INSTANCE(x,y,z,0), cls);
}