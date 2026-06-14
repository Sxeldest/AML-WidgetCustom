; =========================================================
; Game Engine Function: _Z23jinit_master_decompressP22jpeg_decompress_struct
; Address            : 0x47F630 - 0x47F930
; =========================================================

47F630:  PUSH            {R4-R7,LR}
47F632:  ADD             R7, SP, #0xC
47F634:  PUSH.W          {R8-R10}
47F638:  MOV             R4, R0
47F63A:  MOVS            R1, #1
47F63C:  LDR             R0, [R4,#4]
47F63E:  MOVS            R2, #0x1C
47F640:  MOV.W           R10, #1
47F644:  LDR             R3, [R0]
47F646:  MOV             R0, R4
47F648:  BLX             R3
47F64A:  LDR.W           R2, =(sub_47FB40+1 - 0x47F65A)
47F64E:  MOV.W           R8, #0
47F652:  LDR.W           R1, =(sub_47FA3C+1 - 0x47F660)
47F656:  ADD             R2, PC; sub_47FB40
47F658:  STR.W           R0, [R4,#0x180]
47F65C:  ADD             R1, PC; sub_47FA3C
47F65E:  STRB.W          R8, [R0,#8]
47F662:  STRD.W          R1, R2, [R0]
47F666:  LDR             R0, [R4,#0x14]
47F668:  LDR.W           R9, [R4,#0x180]
47F66C:  CMP             R0, #0xCA
47F66E:  BEQ             loc_47F684
47F670:  LDR             R0, [R4]
47F672:  MOVS            R1, #0x14
47F674:  STR             R1, [R0,#0x14]
47F676:  LDR             R0, [R4]
47F678:  LDR             R1, [R4,#0x14]
47F67A:  STR             R1, [R0,#0x18]
47F67C:  LDR             R0, [R4]
47F67E:  LDR             R1, [R0]
47F680:  MOV             R0, R4
47F682:  BLX             R1
47F684:  LDR             R0, [R4,#4]
47F686:  LDRD.W          R1, R2, [R4,#0x1C]
47F68A:  LDR             R3, [R4,#0x2C]
47F68C:  LDR.W           R6, =(unk_61D590 - 0x47F69E)
47F690:  LDRB.W          R5, [R4,#0x4A]
47F694:  STRD.W          R1, R2, [R4,#0x5C]
47F698:  SUBS            R1, R3, #1
47F69A:  ADD             R6, PC; unk_61D590
47F69C:  ADD.W           R2, R4, #0x24 ; '$'
47F6A0:  CMP             R1, #5
47F6A2:  ADD.W           R3, R4, #0x64 ; 'd'
47F6A6:  IT CC
47F6A8:  ADDCC.W         R2, R6, R1,LSL#2
47F6AC:  CMP             R5, #0
47F6AE:  LDR             R1, [R2]
47F6B0:  MOV.W           R2, #1
47F6B4:  IT EQ
47F6B6:  MOVEQ           R2, R1
47F6B8:  STM.W           R3, {R1,R2,R10}
47F6BC:  MOVS            R1, #1
47F6BE:  MOV.W           R2, #0x580
47F6C2:  LDR             R3, [R0]
47F6C4:  MOV             R0, R4
47F6C6:  BLX             R3
47F6C8:  MOV.W           R1, #0x100
47F6CC:  MOV             R5, R0
47F6CE:  ADD.W           R6, R5, #0x100
47F6D2:  STR.W           R6, [R4,#0x120]
47F6D6:  BLX             j___aeabi_memclr8_1
47F6DA:  ADR             R0, dword_47F930
47F6DC:  MOV.W           R1, #0x180
47F6E0:  VLD1.64         {D16-D17}, [R0@128]
47F6E4:  ADR             R0, dword_47F940
47F6E6:  MOVS            R2, #0xFF
47F6E8:  VLD1.64         {D18-D19}, [R0@128]
47F6EC:  ADR             R0, dword_47F950
47F6EE:  VLD1.64         {D20-D21}, [R0@128]
47F6F2:  ADR             R0, dword_47F960
47F6F4:  VLD1.64         {D22-D23}, [R0@128]
47F6F8:  ADR             R0, dword_47F970
47F6FA:  VLD1.64         {D24-D25}, [R0@128]
47F6FE:  ADR             R0, dword_47F980
47F700:  VLD1.64         {D26-D27}, [R0@128]
47F704:  ADR             R0, dword_47F990
47F706:  VLD1.64         {D28-D29}, [R0@128]
47F70A:  ADR             R0, dword_47F9A0
47F70C:  VLD1.64         {D30-D31}, [R0@128]
47F710:  ADR             R0, loc_47F9B0
47F712:  VLD1.64         {D0-D1}, [R0@128]
47F716:  ADR             R0, dword_47F9C0
47F718:  VLD1.64         {D2-D3}, [R0@128]
47F71C:  ADD.W           R0, R5, #0x110
47F720:  VST1.8          {D2-D3}, [R0]
47F724:  ADR             R0, dword_47F9D0
47F726:  VLD1.64         {D2-D3}, [R0@128]
47F72A:  ADR             R0, loc_47F9E0
47F72C:  VST1.8          {D16-D17}, [R6]
47F730:  VLD1.64         {D16-D17}, [R0@128]
47F734:  ADD.W           R0, R5, #0x120
47F738:  VST1.8          {D16-D17}, [R0]
47F73C:  ADR             R0, loc_47F9F0
47F73E:  VLD1.64         {D16-D17}, [R0@128]
47F742:  ADD.W           R0, R5, #0x130
47F746:  VST1.8          {D16-D17}, [R0]
47F74A:  ADR             R0, loc_47FA00
47F74C:  VLD1.64         {D16-D17}, [R0@128]
47F750:  ADD.W           R0, R5, #0x140
47F754:  VST1.8          {D16-D17}, [R0]
47F758:  ADR             R0, dword_47FA10
47F75A:  VLD1.64         {D16-D17}, [R0@128]
47F75E:  ADD.W           R0, R5, #0x150
47F762:  VST1.8          {D16-D17}, [R0]
47F766:  ADR             R0, dword_47FA20
47F768:  VLD1.64         {D16-D17}, [R0@128]
47F76C:  ADD.W           R0, R5, #0x160
47F770:  VST1.8          {D16-D17}, [R0]
47F774:  ADD.W           R0, R5, #0x170
47F778:  VST1.8          {D18-D19}, [R0]
47F77C:  ADD.W           R0, R5, #0x180
47F780:  VST1.8          {D20-D21}, [R0]
47F784:  ADD.W           R0, R5, #0x190
47F788:  VST1.8          {D22-D23}, [R0]
47F78C:  ADD.W           R0, R5, #0x1A0
47F790:  VST1.8          {D24-D25}, [R0]
47F794:  ADD.W           R0, R5, #0x1B0
47F798:  VST1.8          {D26-D27}, [R0]
47F79C:  ADD.W           R0, R5, #0x1C0
47F7A0:  VST1.8          {D28-D29}, [R0]
47F7A4:  ADD.W           R0, R5, #0x1D0
47F7A8:  VST1.8          {D30-D31}, [R0]
47F7AC:  ADD.W           R0, R5, #0x1E0
47F7B0:  VST1.8          {D0-D1}, [R0]
47F7B4:  ADD.W           R0, R5, #0x1F0
47F7B8:  VST1.8          {D2-D3}, [R0]
47F7BC:  ADD.W           R0, R5, #0x200
47F7C0:  BLX             j___aeabi_memset8
47F7C4:  ADD.W           R0, R5, #0x380
47F7C8:  MOV.W           R1, #0x180
47F7CC:  BLX             j___aeabi_memclr8_1
47F7D0:  LDR.W           R1, [R4,#0x120]; void *
47F7D4:  ADD.W           R0, R5, #0x500; void *
47F7D8:  MOVS            R2, #0x80; size_t
47F7DA:  BLX             memcpy_1
47F7DE:  STR.W           R8, [R9,#0xC]
47F7E2:  STRB.W          R8, [R9,#0x10]
47F7E6:  STRD.W          R8, R8, [R9,#0x14]
47F7EA:  LDRB.W          R0, [R4,#0x4A]
47F7EE:  CBZ             R0, loc_47F82A
47F7F0:  LDRB.W          R0, [R4,#0x40]
47F7F4:  MOV             R5, R4
47F7F6:  CMP             R0, #0
47F7F8:  ITTT EQ
47F7FA:  MOVEQ           R0, #0
47F7FC:  STRBEQ.W        R0, [R4,#0x5A]
47F800:  STRHEQ.W        R0, [R4,#0x58]
47F804:  LDRB.W          R0, [R5,#0x41]!
47F808:  CBZ             R0, loc_47F818
47F80A:  LDR             R0, [R4]
47F80C:  MOVS            R1, #0x2F ; '/'
47F80E:  STR             R1, [R0,#0x14]
47F810:  LDR             R0, [R4]
47F812:  LDR             R1, [R0]
47F814:  MOV             R0, R4
47F816:  BLX             R1
47F818:  LDR             R0, [R4,#0x64]
47F81A:  CMP             R0, #3
47F81C:  BNE             loc_47F83A
47F81E:  LDR             R0, [R4,#0x74]
47F820:  CBZ             R0, loc_47F84A
47F822:  MOVS            R0, #1
47F824:  STRB.W          R0, [R4,#0x59]
47F828:  B               loc_47F85E
47F82A:  MOVS            R0, #0
47F82C:  ADD.W           R5, R4, #0x41 ; 'A'
47F830:  STRB.W          R0, [R4,#0x5A]
47F834:  STRH.W          R0, [R4,#0x58]
47F838:  B               loc_47F890
47F83A:  MOVS            R0, #0
47F83C:  MOVS            R1, #1
47F83E:  STRB.W          R0, [R4,#0x5A]
47F842:  STRH.W          R1, [R4,#0x58]
47F846:  STR             R0, [R4,#0x74]
47F848:  B               loc_47F85E
47F84A:  LDRB.W          R0, [R4,#0x50]
47F84E:  CMP             R0, #0
47F850:  MOV.W           R0, #1
47F854:  ITE EQ
47F856:  STRBEQ.W        R0, [R4,#0x58]
47F85A:  STRBNE.W        R0, [R4,#0x5A]
47F85E:  LDRB.W          R0, [R4,#0x58]
47F862:  CBZ             R0, loc_47F872
47F864:  LDR             R0, [R4]
47F866:  MOVS            R1, #0x30 ; '0'
47F868:  STR             R1, [R0,#0x14]
47F86A:  LDR             R0, [R4]
47F86C:  LDR             R1, [R0]
47F86E:  MOV             R0, R4
47F870:  BLX             R1
47F872:  LDRB.W          R0, [R4,#0x5A]
47F876:  CMP             R0, #0
47F878:  ITT EQ
47F87A:  LDRBEQ.W        R0, [R4,#0x59]
47F87E:  CMPEQ           R0, #0
47F880:  BEQ             loc_47F890
47F882:  LDR             R0, [R4]
47F884:  MOVS            R1, #0x30 ; '0'
47F886:  STR             R1, [R0,#0x14]
47F888:  LDR             R0, [R4]
47F88A:  LDR             R1, [R0]
47F88C:  MOV             R0, R4
47F88E:  BLX             R1
47F890:  LDRB            R0, [R5]
47F892:  CBNZ            R0, loc_47F8C0
47F894:  LDRB.W          R0, [R9,#0x10]
47F898:  CBZ             R0, loc_47F8AA
47F89A:  LDR             R0, [R4]
47F89C:  MOVS            R1, #0x30 ; '0'
47F89E:  STR             R1, [R0,#0x14]
47F8A0:  LDR             R0, [R4]
47F8A2:  LDR             R1, [R0]
47F8A4:  MOV             R0, R4
47F8A6:  BLX             R1
47F8A8:  B               loc_47F8B6
47F8AA:  MOV             R0, R4
47F8AC:  BLX             j__Z23jinit_color_deconverterP22jpeg_decompress_struct; jinit_color_deconverter(jpeg_decompress_struct *)
47F8B0:  MOV             R0, R4
47F8B2:  BLX             j__Z15jinit_upsamplerP22jpeg_decompress_struct; jinit_upsampler(jpeg_decompress_struct *)
47F8B6:  LDRB.W          R1, [R4,#0x5A]
47F8BA:  MOV             R0, R4
47F8BC:  BLX             j__Z23jinit_d_post_controllerP22jpeg_decompress_structh; jinit_d_post_controller(jpeg_decompress_struct *,uchar)
47F8C0:  MOV             R0, R4
47F8C2:  BLX             j__Z17jinit_inverse_dctP22jpeg_decompress_struct; jinit_inverse_dct(jpeg_decompress_struct *)
47F8C6:  LDRB.W          R0, [R4,#0xC9]
47F8CA:  CBZ             R0, loc_47F8D2
47F8CC:  LDR             R0, [R4]
47F8CE:  MOVS            R1, #1
47F8D0:  B               loc_47F8DC
47F8D2:  LDRB.W          R0, [R4,#0xC8]
47F8D6:  CBZ             R0, loc_47F928
47F8D8:  LDR             R0, [R4]
47F8DA:  MOVS            R1, #0x30 ; '0'
47F8DC:  STR             R1, [R0,#0x14]
47F8DE:  LDR             R0, [R4]
47F8E0:  LDR             R1, [R0]
47F8E2:  MOV             R0, R4
47F8E4:  BLX             R1
47F8E6:  LDR.W           R0, [R4,#0x190]
47F8EA:  LDRB            R0, [R0,#0x10]
47F8EC:  CBZ             R0, loc_47F8F2
47F8EE:  MOVS            R1, #1
47F8F0:  B               loc_47F8FC
47F8F2:  LDRB.W          R1, [R4,#0x40]
47F8F6:  CMP             R1, #0
47F8F8:  IT NE
47F8FA:  MOVNE           R1, #1
47F8FC:  MOV             R0, R4
47F8FE:  BLX             j__Z23jinit_d_coef_controllerP22jpeg_decompress_structh; jinit_d_coef_controller(jpeg_decompress_struct *,uchar)
47F902:  LDRB            R0, [R5]
47F904:  CBNZ            R0, loc_47F90E
47F906:  MOV             R0, R4
47F908:  MOVS            R1, #0
47F90A:  BLX             j__Z23jinit_d_main_controllerP22jpeg_decompress_structh; jinit_d_main_controller(jpeg_decompress_struct *,uchar)
47F90E:  LDR             R0, [R4,#4]
47F910:  LDR             R1, [R0,#0x18]
47F912:  MOV             R0, R4
47F914:  BLX             R1
47F916:  LDR.W           R0, [R4,#0x190]
47F91A:  LDR             R1, [R0,#8]
47F91C:  MOV             R0, R4
47F91E:  POP.W           {R8-R10}
47F922:  POP.W           {R4-R7,LR}
47F926:  BX              R1
47F928:  MOV             R0, R4
47F92A:  BLX             j__Z18jinit_huff_decoderP22jpeg_decompress_struct; jinit_huff_decoder(jpeg_decompress_struct *)
47F92E:  B               loc_47F8E6
