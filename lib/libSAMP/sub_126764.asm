; =========================================================
; Game Engine Function: sub_126764
; Address            : 0x126764 - 0x126916
; =========================================================

126764:  PUSH            {R4-R7,LR}
126766:  ADD             R7, SP, #0xC
126768:  PUSH.W          {R8-R11}
12676C:  SUB             SP, SP, #4
12676E:  VPUSH           {D8-D9}
126772:  SUB.W           SP, SP, #0x2F8
126776:  LDR             R0, =(unk_263E18 - 0x126784)
126778:  MOV             R1, #unk_AFC80; n
126780:  ADD             R0, PC; unk_263E18 ; int
126782:  STR             R0, [SP,#0x328+var_2DC]
126784:  BLX             sub_22178C
126788:  VMOV.I32        Q4, #0
12678C:  ADD             R0, SP, #0x328+var_58
12678E:  MOVS            R5, #0
126790:  VST1.64         {D8-D9}, [R0]!
126794:  VST1.64         {D8-D9}, [R0]!
126798:  STR             R5, [R0]
12679A:  BL              sub_F97EC
12679E:  ADDW            R4, SP, #0x328+var_157
1267A2:  MOV             R3, R0
1267A4:  MOV             R0, R4
1267A6:  BL              sub_12693C
1267AA:  LDR             R1, =(aR_1 - 0x1267B2); "r" ...
1267AC:  MOV             R0, R4; filename
1267AE:  ADD             R1, PC; "r" ; modes
1267B0:  BLX             fopen
1267B4:  CMP             R0, #0
1267B6:  BEQ.W           loc_1268F4
1267BA:  LDR             R1, =(aAxl - 0x1267C6); "AXL" ...
1267BC:  MOV             R10, R0
1267BE:  LDR             R2, =(aCvehiclesoundh_4 - 0x1267C8); "CVehicleSoundHook: vehicleAudioSetting "... ...
1267C0:  MOVS            R0, #4; prio
1267C2:  ADD             R1, PC; "AXL"
1267C4:  ADD             R2, PC; "CVehicleSoundHook: vehicleAudioSetting "...
1267C6:  BLX             __android_log_print
1267CA:  ADD             R4, SP, #0x328+s1
1267CC:  MOV.W           R1, #0x12C; n
1267D0:  MOV             R0, R4; int
1267D2:  BLX             sub_22178C
1267D6:  ADD             R0, SP, #0x328+var_2C0
1267D8:  MOV.W           R1, #0x12C; n
1267DC:  VST1.64         {D8-D9}, [R0]!
1267E0:  MOV             R2, R10; stream
1267E2:  VST1.64         {D8-D9}, [R0]!
1267E6:  VST1.64         {D8-D9}, [R0]!
1267EA:  STRH            R5, [R0]
1267EC:  MOV             R0, R4; s
1267EE:  STRH.W          R5, [SP,#0x328+var_2C2]
1267F2:  BLX             fgets
1267F6:  CMP             R0, #0
1267F8:  BEQ             loc_1268EC
1267FA:  ADD             R0, SP, #0x328+var_58
1267FC:  ADD.W           R8, SP, #0x328+s1
126800:  ADD.W           R1, R0, #0x20 ; ' '
126804:  STR             R1, [SP,#0x328+var_2E0]
126806:  ADD.W           R1, R0, #0x14
12680A:  STR             R1, [SP,#0x328+var_2E4]
12680C:  ADD.W           R1, R0, #0xC
126810:  STR             R1, [SP,#0x328+var_2E8]
126812:  ADD.W           R1, R0, #8
126816:  STR             R1, [SP,#0x328+var_2EC]
126818:  ADDS            R1, R0, #6
12681A:  STR             R1, [SP,#0x328+var_2F0]
12681C:  ADDS            R1, R0, #4
12681E:  ADDS            R0, #2
126820:  STR             R1, [SP,#0x328+var_2F4]
126822:  ADD.W           R9, SP, #0x328+var_2C0
126826:  STR             R0, [SP,#0x328+var_2F8]
126828:  LDR             R4, =(aTheEnd - 0x12682E); ";the end" ...
12682A:  ADD             R4, PC; ";the end"
12682C:  MOV             R0, R8; s1
12682E:  MOV             R1, R4; s2
126830:  MOVS            R2, #8; n
126832:  BLX             memcmp
126836:  CMP             R0, #0
126838:  BEQ             loc_1268EC
12683A:  LDRB.W          R0, [SP,#0x328+s1]
12683E:  CMP             R0, #0x3B ; ';'
126840:  BEQ             loc_1268DC
126842:  ADD             R0, SP, #0x328+var_2D0
126844:  LDR             R1, =(aSHdHdHdHdFFDFD - 0x126858); "%s %hd %hd %hd %hd %f %f %d %f %d %d %d"... ...
126846:  STR             R0, [SP,#0x328+var_308]
126848:  ADD             R0, SP, #0x328+var_2D4
12684A:  STR             R0, [SP,#0x328+var_304]
12684C:  ADD             R0, SP, #0x328+var_2D8
12684E:  STR             R0, [SP,#0x328+var_300]
126850:  ADD             R5, SP, #0x328+var_58
126852:  LDR             R0, [SP,#0x328+var_2E0]
126854:  ADD             R1, PC; "%s %hd %hd %hd %hd %f %f %d %f %d %d %d"...
126856:  STR             R0, [SP,#0x328+var_2FC]
126858:  MOV             R2, R9
12685A:  LDR             R0, [SP,#0x328+var_2F8]
12685C:  MOV             R3, R5
12685E:  STR             R0, [SP,#0x328+var_328]
126860:  LDR             R0, [SP,#0x328+var_2F4]
126862:  STR             R0, [SP,#0x328+var_324]
126864:  LDR             R0, [SP,#0x328+var_2F0]
126866:  STR             R0, [SP,#0x328+var_320]
126868:  LDR             R0, [SP,#0x328+var_2EC]
12686A:  STR             R0, [SP,#0x328+var_31C]
12686C:  LDR             R0, [SP,#0x328+var_2E8]
12686E:  STR             R0, [SP,#0x328+var_318]
126870:  ADD             R0, SP, #0x328+var_2C8
126872:  STR             R0, [SP,#0x328+var_314]
126874:  LDR             R0, [SP,#0x328+var_2E4]
126876:  STR             R0, [SP,#0x328+var_310]
126878:  ADD             R0, SP, #0x328+var_2CC
12687A:  STR             R0, [SP,#0x328+var_30C]
12687C:  MOV             R0, R8; s
12687E:  BLX             sscanf
126882:  LDR             R0, =(off_23494C - 0x12688E)
126884:  MOV             R11, R4
126886:  LDRD.W          R2, R1, [SP,#0x328+var_2CC]
12688A:  ADD             R0, PC; off_23494C
12688C:  LDRD.W          R6, R3, [SP,#0x328+var_2D4]
126890:  STRB.W          R1, [SP,#0x328+var_48]
126894:  MOVW            R1, #0x5D49
126898:  LDR             R0, [R0]; dword_23DF24
12689A:  MOVT            R1, #0x38 ; '8'
12689E:  STRB.W          R2, [SP,#0x328+var_40]
1268A2:  LDR             R4, [SP,#0x328+var_2D8]
1268A4:  LDR             R0, [R0]
1268A6:  STRB.W          R3, [SP,#0x328+var_3E]
1268AA:  ADDS            R2, R0, R1
1268AC:  ADD.W           R1, SP, #0x328+var_2C2
1268B0:  MOV             R0, R9
1268B2:  STRB.W          R6, [SP,#0x328+var_3D]
1268B6:  STRB.W          R4, [SP,#0x328+var_3C]
1268BA:  BLX             R2
1268BC:  LDRSH.W         R0, [SP,#0x328+var_2C2]
1268C0:  LDR             R1, [SP,#0x328+var_2DC]
1268C2:  ADD.W           R0, R0, R0,LSL#3
1268C6:  ADD.W           R0, R1, R0,LSL#2
1268CA:  MOV             R1, R5
1268CC:  LDM             R1!, {R2-R4,R6}
1268CE:  SUB.W           R0, R0, #0x3840
1268D2:  STM             R0!, {R2-R4,R6}
1268D4:  LDM.W           R1, {R2-R6}
1268D8:  STM             R0!, {R2-R6}
1268DA:  MOV             R4, R11
1268DC:  MOV             R0, R8; s
1268DE:  MOV.W           R1, #0x12C; n
1268E2:  MOV             R2, R10; stream
1268E4:  BLX             fgets
1268E8:  CMP             R0, #0
1268EA:  BNE             loc_12682C
1268EC:  MOV             R0, R10; stream
1268EE:  BLX             fclose
1268F2:  B               loc_126906
1268F4:  LDR             R1, =(aAxl - 0x1268FE); "AXL" ...
1268F6:  MOVS            R0, #4; prio
1268F8:  LDR             R2, =(aCvehiclesoundh_5 - 0x126900); "CVehicleSoundHook: Cannot read vehicleA"... ...
1268FA:  ADD             R1, PC; "AXL"
1268FC:  ADD             R2, PC; "CVehicleSoundHook: Cannot read vehicleA"...
1268FE:  BLX             __android_log_print
126902:  BL              sub_126724
126906:  ADD.W           SP, SP, #0x2F8
12690A:  VPOP            {D8-D9}
12690E:  ADD             SP, SP, #4
126910:  POP.W           {R8-R11}
126914:  POP             {R4-R7,PC}
