; =========================================================
; Game Engine Function: sub_1148C0
; Address            : 0x1148C0 - 0x114D0E
; =========================================================

1148C0:  PUSH            {R4-R7,LR}
1148C2:  ADD             R7, SP, #0xC
1148C4:  PUSH.W          {R8-R11}
1148C8:  SUB             SP, SP, #0xB4
1148CA:  MOV             R4, R0
1148CC:  BL              sub_114E18
1148D0:  ADR.W           R0, dword_114DA0
1148D4:  MOVS            R1, #0
1148D6:  VLD1.64         {D16-D17}, [R0]
1148DA:  ADR.W           R0, dword_114DB0
1148DE:  VMOV.I32        Q10, #0
1148E2:  ADD.W           R10, R4, #0x3C ; '<'
1148E6:  VLD1.64         {D18-D19}, [R0]
1148EA:  MOV.W           R0, #0x3F800000
1148EE:  ADD.W           R9, R4, #0x46 ; 'F'
1148F2:  STRD.W          R1, R0, [R4,#0x34]
1148F6:  ADD.W           R0, R4, #0x10
1148FA:  VST1.32         {D18-D19}, [R0]!
1148FE:  VST1.32         {D16-D17}, [R0]!
114902:  STR             R1, [R0]
114904:  MOVS            R0, #2
114906:  VST1.16         {D20-D21}, [R9],R0
11490A:  MOV             R0, R10
11490C:  VST1.32         {D20-D21}, [R0]!
114910:  STR             R0, [SP,#0xD0+var_CC]
114912:  MOV             R0, R4
114914:  MOVS            R1, #0
114916:  BL              sub_114E60
11491A:  LDR             R0, =(off_23494C - 0x11492A)
11491C:  MOVW            R8, #0x6000
114920:  ADD             R6, SP, #0xD0+var_38
114922:  MOVT            R8, #0x3F ; '?'
114926:  ADD             R0, PC; off_23494C
114928:  LDR.W           R11, [R0]; dword_23DF24
11492C:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN10radar_rectC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x114934); `vtable for'std::__function::__func<radar_rect::radar_rect(void)::$_0,std::allocator<radar_rect::radar_rect(void)::$_0>,void ()(void)> ...
11492E:  STR             R6, [SP,#0xD0+var_28]
114930:  ADD             R0, PC; `vtable for'std::__function::__func<radar_rect::radar_rect(void)::$_0,std::allocator<radar_rect::radar_rect(void)::$_0>,void ()(void)>
114932:  LDR.W           R1, [R11]
114936:  ADDS            R0, #8
114938:  STR             R0, [SP,#0xD0+var_38]
11493A:  ADD.W           R0, R1, R8
11493E:  STR             R4, [SP,#0xD0+var_34]
114940:  MOV             R1, R6
114942:  BL              sub_1642EC
114946:  MOV             R5, R0
114948:  LDR             R0, [SP,#0xD0+var_28]
11494A:  CMP             R6, R0
11494C:  BEQ             loc_114954
11494E:  CBZ             R0, loc_11495E
114950:  MOVS            R1, #5
114952:  B               loc_114956
114954:  MOVS            R1, #4
114956:  LDR             R2, [R0]
114958:  LDR.W           R1, [R2,R1,LSL#2]
11495C:  BLX             R1
11495E:  CBZ             R5, loc_114970
114960:  LDR             R1, =(aAxl - 0x114968); "AXL" ...
114962:  LDR             R2, =(aCanTRemapPage0_0 - 0x11496A); "Can't remap page 0x3F6000 to patch addr"... ...
114964:  ADD             R1, PC; "AXL"
114966:  ADD             R2, PC; "Can't remap page 0x3F6000 to patch addr"...
114968:  MOVS            R0, #6; prio
11496A:  BLX             __android_log_print
11496E:  B               loc_114D04
114970:  LDR.W           R0, [R11]
114974:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN10radar_rectC1EvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x11497E); `vtable for'std::__function::__func<radar_rect::radar_rect(void)::$_1,std::allocator<radar_rect::radar_rect(void)::$_1>,void ()(void)> ...
114976:  ADD             R0, R8
114978:  STR             R6, [SP,#0xD0+var_28]
11497A:  ADD             R1, PC; `vtable for'std::__function::__func<radar_rect::radar_rect(void)::$_1,std::allocator<radar_rect::radar_rect(void)::$_1>,void ()(void)>
11497C:  ADD.W           R0, R0, #0x48000
114980:  ADDS            R1, #8
114982:  STR             R4, [SP,#0xD0+var_34]
114984:  STR             R1, [SP,#0xD0+var_38]
114986:  MOV             R1, R6
114988:  BL              sub_1642EC
11498C:  MOV             R5, R0
11498E:  LDR             R0, [SP,#0xD0+var_28]
114990:  CMP             R6, R0
114992:  BEQ             loc_11499A
114994:  CBZ             R0, loc_1149A4
114996:  MOVS            R1, #5
114998:  B               loc_11499C
11499A:  MOVS            R1, #4
11499C:  LDR             R2, [R0]
11499E:  LDR.W           R1, [R2,R1,LSL#2]
1149A2:  BLX             R1
1149A4:  CBZ             R5, loc_1149B6
1149A6:  LDR             R1, =(aAxl - 0x1149AE); "AXL" ...
1149A8:  LDR             R2, =(aCanTRemapPage0_1 - 0x1149B0); "Can't remap page 0x43E000 to complete d"... ...
1149AA:  ADD             R1, PC; "AXL"
1149AC:  ADD             R2, PC; "Can't remap page 0x43E000 to complete d"...
1149AE:  MOVS            R0, #6; prio
1149B0:  BLX             __android_log_print
1149B4:  B               loc_114D04
1149B6:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN10radar_rectC1EvE3$_2NS_9allocatorIS3_EEFfPfEEE - 0x1149C4); `vtable for'std::__function::__func<radar_rect::radar_rect(void)::$_2,std::allocator<radar_rect::radar_rect(void)::$_2>,float ()(float *)> ...
1149B8:  ADD.W           R8, SP, #0xD0+var_68
1149BC:  STR.W           R8, [SP,#0xD0+var_58]
1149C0:  ADD             R0, PC; `vtable for'std::__function::__func<radar_rect::radar_rect(void)::$_2,std::allocator<radar_rect::radar_rect(void)::$_2>,float ()(float *)>
1149C2:  STR             R4, [SP,#0xD0+var_64]
1149C4:  ADDS            R0, #8
1149C6:  STR             R0, [SP,#0xD0+var_68]
1149C8:  BL              sub_11568C
1149CC:  LDR             R0, =(unk_263478 - 0x1149D2)
1149CE:  ADD             R0, PC; unk_263478
1149D0:  LDR             R6, [R0,#(dword_263488 - 0x263478)]
1149D2:  CBNZ            R6, loc_114A04
1149D4:  ADD             R5, SP, #0xD0+var_68
1149D6:  ADD             R0, SP, #0xD0+var_38
1149D8:  MOV             R1, R5
1149DA:  BL              sub_1156E4
1149DE:  BL              sub_11568C
1149E2:  LDR             R0, =(unk_263478 - 0x1149E8)
1149E4:  ADD             R0, PC; unk_263478
1149E6:  ADD             R5, SP, #0xD0+var_38
1149E8:  MOV             R1, R5
1149EA:  BL              sub_115710
1149EE:  LDR             R0, [SP,#0xD0+var_28]
1149F0:  CMP             R5, R0
1149F2:  BEQ             loc_1149FA
1149F4:  CBZ             R0, loc_114A04
1149F6:  MOVS            R1, #5
1149F8:  B               loc_1149FC
1149FA:  MOVS            R1, #4
1149FC:  LDR             R2, [R0]
1149FE:  LDR.W           R1, [R2,R1,LSL#2]
114A02:  BLX             R1
114A04:  LDR             R0, [SP,#0xD0+var_58]
114A06:  CMP             R8, R0
114A08:  BEQ             loc_114A10
114A0A:  CBZ             R0, loc_114A1A
114A0C:  MOVS            R1, #5
114A0E:  B               loc_114A12
114A10:  MOVS            R1, #4
114A12:  LDR             R2, [R0]
114A14:  LDR.W           R1, [R2,R1,LSL#2]
114A18:  BLX             R1
114A1A:  CBZ             R6, loc_114A2C
114A1C:  LDR             R1, =(aAxl - 0x114A24); "AXL" ...
114A1E:  LDR             R2, =(aCanTInstallHoo_0 - 0x114A26); "Can't install hook on limit_radar_point"... ...
114A20:  ADD             R1, PC; "AXL"
114A22:  ADD             R2, PC; "Can't install hook on limit_radar_point"...
114A24:  MOVS            R0, #6; prio
114A26:  BLX             __android_log_print
114A2A:  B               loc_114A44
114A2C:  LDR.W           R0, [R11]
114A30:  MOVW            R2, #0x5A2C
114A34:  LDR             R1, =(sub_114EF0+1 - 0x114A40)
114A36:  MOVT            R2, #0x67 ; 'g'
114A3A:  ADD             R0, R2
114A3C:  ADD             R1, PC; sub_114EF0
114A3E:  MOV             R2, R10
114A40:  BL              sub_164196
114A44:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN10radar_rectC1EvE3$_3NS_9allocatorIS3_EEFvjPfPjEEE - 0x114A52); `vtable for'std::__function::__func<radar_rect::radar_rect(void)::$_3,std::allocator<radar_rect::radar_rect(void)::$_3>,void ()(uint,float *,uint *)> ...
114A46:  ADD.W           R10, SP, #0xD0+var_80
114A4A:  STR.W           R10, [SP,#0xD0+var_70]
114A4E:  ADD             R0, PC; `vtable for'std::__function::__func<radar_rect::radar_rect(void)::$_3,std::allocator<radar_rect::radar_rect(void)::$_3>,void ()(uint,float *,uint *)>
114A50:  STR             R4, [SP,#0xD0+var_7C]
114A52:  ADDS            R0, #8
114A54:  STR             R0, [SP,#0xD0+var_80]
114A56:  BL              sub_1157C8
114A5A:  LDR             R0, =(unk_263498 - 0x114A60)
114A5C:  ADD             R0, PC; unk_263498
114A5E:  LDR             R6, [R0,#(dword_2634A8 - 0x263498)]
114A60:  CBNZ            R6, loc_114A92
114A62:  ADD             R5, SP, #0xD0+var_80
114A64:  ADD             R0, SP, #0xD0+var_38
114A66:  MOV             R1, R5
114A68:  BL              sub_115820
114A6C:  BL              sub_1157C8
114A70:  LDR             R0, =(unk_263498 - 0x114A76)
114A72:  ADD             R0, PC; unk_263498
114A74:  ADD             R5, SP, #0xD0+var_38
114A76:  MOV             R1, R5
114A78:  BL              sub_11584C
114A7C:  LDR             R0, [SP,#0xD0+var_28]
114A7E:  CMP             R5, R0
114A80:  BEQ             loc_114A88
114A82:  CBZ             R0, loc_114A92
114A84:  MOVS            R1, #5
114A86:  B               loc_114A8A
114A88:  MOVS            R1, #4
114A8A:  LDR             R2, [R0]
114A8C:  LDR.W           R1, [R2,R1,LSL#2]
114A90:  BLX             R1
114A92:  LDR             R0, [SP,#0xD0+var_70]
114A94:  CMP             R10, R0
114A96:  BEQ             loc_114A9E
114A98:  CBZ             R0, loc_114AA8
114A9A:  MOVS            R1, #5
114A9C:  B               loc_114AA0
114A9E:  MOVS            R1, #4
114AA0:  LDR             R2, [R0]
114AA2:  LDR.W           R1, [R2,R1,LSL#2]
114AA6:  BLX             R1
114AA8:  CBZ             R6, loc_114ABA
114AAA:  LDR             R1, =(aAxl - 0x114AB2); "AXL" ...
114AAC:  LDR             R2, =(aCanTInstallHoo_1 - 0x114AB4); "Can't install hook on sprite2d_draw. Ca"... ...
114AAE:  ADD             R1, PC; "AXL"
114AB0:  ADD             R2, PC; "Can't install hook on sprite2d_draw. Ca"...
114AB2:  MOVS            R0, #6; prio
114AB4:  BLX             __android_log_print
114AB8:  B               loc_114AD4
114ABA:  LDR.W           R0, [R11]
114ABE:  MOVW            R3, #0x4944
114AC2:  LDR             R1, =(sub_114F1C+1 - 0x114AD2)
114AC4:  MOVT            R3, #0x67 ; 'g'
114AC8:  ADD             R0, R3
114ACA:  ADD.W           R2, R4, #0x40 ; '@'
114ACE:  ADD             R1, PC; sub_114F1C
114AD0:  BL              sub_164196
114AD4:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN10radar_rectC1EvE3$_4NS_9allocatorIS3_EEFP7CWidgetS7_PcP14WidgetPositionEEE - 0x114AE2); `vtable for'std::__function::__func<radar_rect::radar_rect(void)::$_4,std::allocator<radar_rect::radar_rect(void)::$_4>,CWidget * ()(CWidget *,char *,WidgetPosition *)> ...
114AD6:  ADD.W           R10, SP, #0xD0+var_98
114ADA:  STR.W           R10, [SP,#0xD0+var_88]
114ADE:  ADD             R0, PC; `vtable for'std::__function::__func<radar_rect::radar_rect(void)::$_4,std::allocator<radar_rect::radar_rect(void)::$_4>,CWidget * ()(CWidget *,char *,WidgetPosition *)>
114AE0:  STR             R4, [SP,#0xD0+var_94]
114AE2:  ADDS            R0, #8
114AE4:  STR             R0, [SP,#0xD0+var_98]
114AE6:  BL              sub_115930
114AEA:  LDR             R0, =(unk_2634B8 - 0x114AF0)
114AEC:  ADD             R0, PC; unk_2634B8
114AEE:  LDR             R6, [R0,#(dword_2634C8 - 0x2634B8)]
114AF0:  CBNZ            R6, loc_114B22
114AF2:  ADD             R5, SP, #0xD0+var_98
114AF4:  ADD             R0, SP, #0xD0+var_38
114AF6:  MOV             R1, R5
114AF8:  BL              sub_115988
114AFC:  BL              sub_115930
114B00:  LDR             R0, =(unk_2634B8 - 0x114B06)
114B02:  ADD             R0, PC; unk_2634B8
114B04:  ADD             R5, SP, #0xD0+var_38
114B06:  MOV             R1, R5
114B08:  BL              sub_1159B4
114B0C:  LDR             R0, [SP,#0xD0+var_28]
114B0E:  CMP             R5, R0
114B10:  BEQ             loc_114B18
114B12:  CBZ             R0, loc_114B22
114B14:  MOVS            R1, #5
114B16:  B               loc_114B1A
114B18:  MOVS            R1, #4
114B1A:  LDR             R2, [R0]
114B1C:  LDR.W           R1, [R2,R1,LSL#2]
114B20:  BLX             R1
114B22:  LDR             R0, [SP,#0xD0+var_88]
114B24:  CMP             R10, R0
114B26:  BEQ             loc_114B2E
114B28:  CBZ             R0, loc_114B38
114B2A:  MOVS            R1, #5
114B2C:  B               loc_114B30
114B2E:  MOVS            R1, #4
114B30:  LDR             R2, [R0]
114B32:  LDR.W           R1, [R2,R1,LSL#2]
114B36:  BLX             R1
114B38:  CBZ             R6, loc_114B4A
114B3A:  LDR             R1, =(aAxl - 0x114B42); "AXL" ...
114B3C:  LDR             R2, =(aCanTInstallHoo_2 - 0x114B44); "Can't install hook on wgt_radar_ctor. C"... ...
114B3E:  ADD             R1, PC; "AXL"
114B40:  ADD             R2, PC; "Can't install hook on wgt_radar_ctor. C"...
114B42:  MOVS            R0, #6; prio
114B44:  BLX             __android_log_print
114B48:  B               loc_114B64
114B4A:  LDR.W           R0, [R11]
114B4E:  MOVW            R3, #0xEE74
114B52:  LDR             R1, =(sub_114F48+1 - 0x114B62)
114B54:  MOVT            R3, #0x66 ; 'f'
114B58:  ADD             R0, R3
114B5A:  ADD.W           R2, R4, #0x44 ; 'D'
114B5E:  ADD             R1, PC; sub_114F48
114B60:  BL              sub_164196
114B64:  LDR.W           R0, [R11]
114B68:  STR             R0, [SP,#0xD0+var_D0]
114B6A:  LDR             R1, =(loc_114F74+1 - 0x114B70)
114B6C:  ADD             R1, PC; loc_114F74
114B6E:  ADD             R0, SP, #0xD0+var_B0
114B70:  MOVS            R2, #0
114B72:  MOV             R3, R4
114B74:  BL              sub_114F7E
114B78:  ADD             R6, SP, #0xD0+var_50
114B7A:  ADD             R1, SP, #0xD0+var_B0
114B7C:  MOV             R0, R6
114B7E:  MOV             R8, R1
114B80:  BL              sub_115B1C
114B84:  BL              sub_115AC4
114B88:  LDR             R0, =(unk_2634D8 - 0x114B8E)
114B8A:  ADD             R0, PC; unk_2634D8
114B8C:  LDR.W           R10, [R0,#(dword_2634E8 - 0x2634D8)]
114B90:  CMP.W           R10, #0
114B94:  BNE             loc_114BC6
114B96:  ADD             R5, SP, #0xD0+var_50
114B98:  ADD             R0, SP, #0xD0+var_38
114B9A:  MOV             R1, R5
114B9C:  BL              sub_115B1C
114BA0:  BL              sub_115AC4
114BA4:  LDR             R0, =(unk_2634D8 - 0x114BAA)
114BA6:  ADD             R0, PC; unk_2634D8
114BA8:  ADD             R5, SP, #0xD0+var_38
114BAA:  MOV             R1, R5
114BAC:  BL              sub_115B48
114BB0:  LDR             R0, [SP,#0xD0+var_28]
114BB2:  CMP             R5, R0
114BB4:  BEQ             loc_114BBC
114BB6:  CBZ             R0, loc_114BC6
114BB8:  MOVS            R1, #5
114BBA:  B               loc_114BBE
114BBC:  MOVS            R1, #4
114BBE:  LDR             R2, [R0]
114BC0:  LDR.W           R1, [R2,R1,LSL#2]
114BC4:  BLX             R1
114BC6:  LDR             R0, [SP,#0xD0+var_40]
114BC8:  CMP             R6, R0
114BCA:  BEQ             loc_114BD2
114BCC:  CBZ             R0, loc_114BDC
114BCE:  MOVS            R1, #5
114BD0:  B               loc_114BD4
114BD2:  MOVS            R1, #4
114BD4:  LDR             R2, [R0]
114BD6:  LDR.W           R1, [R2,R1,LSL#2]
114BDA:  BLX             R1
114BDC:  MOVW            R5, #0x4358
114BE0:  CMP.W           R10, #0
114BE4:  MOVT            R5, #0x66 ; 'f'
114BE8:  BNE             loc_114BF8
114BEA:  LDR             R0, [SP,#0xD0+var_D0]
114BEC:  LDR             R1, =(sub_115A98+1 - 0x114BF4)
114BEE:  ADD             R0, R5
114BF0:  ADD             R1, PC; sub_115A98
114BF2:  MOV             R2, R9
114BF4:  BL              sub_164196
114BF8:  LDR             R0, [SP,#0xD0+var_A0]
114BFA:  CMP             R8, R0
114BFC:  BEQ             loc_114C04
114BFE:  CBZ             R0, loc_114C0E
114C00:  MOVS            R1, #5
114C02:  B               loc_114C06
114C04:  MOVS            R1, #4
114C06:  LDR             R2, [R0]
114C08:  LDR.W           R1, [R2,R1,LSL#2]
114C0C:  BLX             R1
114C0E:  MOV             R8, R5
114C10:  CMP.W           R10, #0
114C14:  BEQ             loc_114C24
114C16:  LDR             R1, =(aAxl - 0x114C1E); "AXL" ...
114C18:  LDR             R2, =(aCanTInstallHoo_3 - 0x114C20); "Can't install hook on wgt_radar_dtor. C"... ...
114C1A:  ADD             R1, PC; "AXL"
114C1C:  ADD             R2, PC; "Can't install hook on wgt_radar_dtor. C"...
114C1E:  MOVS            R0, #6; prio
114C20:  BLX             __android_log_print
114C24:  LDR.W           R11, [R11]
114C28:  LDR             R1, =(loc_114FB8+1 - 0x114C2E)
114C2A:  ADD             R1, PC; loc_114FB8
114C2C:  ADD             R0, SP, #0xD0+var_C8
114C2E:  MOVS            R2, #0
114C30:  MOV             R3, R4
114C32:  BL              sub_114F7E
114C36:  ADD.W           R10, SP, #0xD0+var_50
114C3A:  ADD.W           R9, SP, #0xD0+var_C8
114C3E:  MOV             R0, R10
114C40:  MOV             R1, R9
114C42:  BL              sub_115B1C
114C46:  BL              sub_115D3C
114C4A:  LDR             R0, =(unk_2634F8 - 0x114C50)
114C4C:  ADD             R0, PC; unk_2634F8
114C4E:  LDR             R6, [R0,#(dword_263508 - 0x2634F8)]
114C50:  CBNZ            R6, loc_114CB6
114C52:  ADD             R5, SP, #0xD0+var_50
114C54:  ADD             R0, SP, #0xD0+var_38
114C56:  MOV             R1, R5
114C58:  BL              sub_115B1C
114C5C:  BL              sub_115D3C
114C60:  LDR             R0, =(unk_2634F8 - 0x114C66)
114C62:  ADD             R0, PC; unk_2634F8
114C64:  ADD             R5, SP, #0xD0+var_38
114C66:  MOV             R1, R5
114C68:  BL              sub_115B48
114C6C:  LDR             R0, [SP,#0xD0+var_28]
114C6E:  CMP             R5, R0
114C70:  BEQ             loc_114CAC
114C72:  CBZ             R0, loc_114CB6
114C74:  MOVS            R1, #5
114C76:  B               loc_114CAE
114C78:  DCD off_23494C - 0x11492A
114C7C:  DCD _ZTVNSt6__ndk110__function6__funcIZN10radar_rectC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x114934
114C80:  DCD aAxl - 0x114968
114C84:  DCD aCanTRemapPage0_0 - 0x11496A
114C88:  DCD _ZTVNSt6__ndk110__function6__funcIZN10radar_rectC1EvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x11497E
114C8C:  DCD aAxl - 0x1149AE
114C90:  DCD aCanTRemapPage0_1 - 0x1149B0
114C94:  DCD _ZTVNSt6__ndk110__function6__funcIZN10radar_rectC1EvE3$_2NS_9allocatorIS3_EEFfPfEEE - 0x1149C4
114C98:  DCD unk_263478 - 0x1149D2
114C9C:  DCD unk_263478 - 0x1149E8
114CA0:  DCD aAxl - 0x114A24
114CA4:  DCD aCanTInstallHoo_0 - 0x114A26
114CA8:  DCD sub_114EF0+1 - 0x114A40
114CAC:  MOVS            R1, #4
114CAE:  LDR             R2, [R0]
114CB0:  LDR.W           R1, [R2,R1,LSL#2]
114CB4:  BLX             R1
114CB6:  LDR             R0, [SP,#0xD0+var_40]
114CB8:  CMP             R10, R0
114CBA:  BEQ             loc_114CC2
114CBC:  CBZ             R0, loc_114CCC
114CBE:  MOVS            R1, #5
114CC0:  B               loc_114CC4
114CC2:  MOVS            R1, #4
114CC4:  LDR             R2, [R0]
114CC6:  LDR.W           R1, [R2,R1,LSL#2]
114CCA:  BLX             R1
114CCC:  CBNZ            R6, loc_114CDE
114CCE:  LDR             R1, =(sub_115D10+1 - 0x114CDA)
114CD0:  ADD.W           R0, R8, R11
114CD4:  ADDS            R0, #4
114CD6:  ADD             R1, PC; sub_115D10
114CD8:  LDR             R2, [SP,#0xD0+var_CC]
114CDA:  BL              sub_164196
114CDE:  LDR             R0, [SP,#0xD0+var_B8]
114CE0:  CMP             R9, R0
114CE2:  BEQ             loc_114CEA
114CE4:  CBZ             R0, loc_114CF4
114CE6:  MOVS            R1, #5
114CE8:  B               loc_114CEC
114CEA:  MOVS            R1, #4
114CEC:  LDR             R2, [R0]
114CEE:  LDR.W           R1, [R2,R1,LSL#2]
114CF2:  BLX             R1
114CF4:  CBZ             R6, loc_114D04
114CF6:  LDR             R1, =(aAxl - 0x114CFE); "AXL" ...
114CF8:  LDR             R2, =(aCanTInstallHoo_4 - 0x114D00); "Can't install hook on wgt_radar_dtor2. "... ...
114CFA:  ADD             R1, PC; "AXL"
114CFC:  ADD             R2, PC; "Can't install hook on wgt_radar_dtor2. "...
114CFE:  MOVS            R0, #6; prio
114D00:  BLX             __android_log_print
114D04:  MOV             R0, R4
114D06:  ADD             SP, SP, #0xB4
114D08:  POP.W           {R8-R11}
114D0C:  POP             {R4-R7,PC}
