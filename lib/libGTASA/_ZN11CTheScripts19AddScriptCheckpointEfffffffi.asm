; =========================================================
; Game Engine Function: _ZN11CTheScripts19AddScriptCheckpointEfffffffi
; Address            : 0x358928 - 0x358A0E
; =========================================================

358928:  PUSH            {R4-R7,LR}
35892A:  ADD             R7, SP, #0xC
35892C:  PUSH.W          {R8,R9,R11}
358930:  VPUSH           {D8-D14}
358934:  SUB             SP, SP, #0x38; CVector *
358936:  LDR             R5, =(_ZN11CTheScripts21ScriptCheckpointArrayE_ptr - 0x358948)
358938:  VMOV            S26, R0
35893C:  LDR.W           R8, [R7,#arg_C]
358940:  VMOV            S20, R3
358944:  ADD             R5, PC; _ZN11CTheScripts21ScriptCheckpointArrayE_ptr
358946:  VLDR            S16, [R7,#arg_8]
35894A:  VLDR            S18, [R7,#arg_4]
35894E:  VMOV            S24, R2; unsigned __int8
358952:  LDR             R5, [R5]; CTheScripts::ScriptCheckpointArray ...
358954:  VMOV            S28, R1
358958:  VLDR            S22, [R7,#arg_0]
35895C:  MOV.W           R0, #0xFFFFFFFF
358960:  LDRB.W          R1, [R5],#8; CTheScripts::ScriptCheckpointArray
358964:  ADDS            R0, #1; this
358966:  CMP             R0, #0x13
358968:  BHI             loc_35896E
35896A:  CMP             R1, #0
35896C:  BNE             loc_358960
35896E:  MOVS            R1, #1
358970:  STRB.W          R1, [R5,#-8]
358974:  MOVS            R1, #3; int
358976:  BLX             j__ZN11CTheScripts28GetNewUniqueScriptThingIndexEih; CTheScripts::GetNewUniqueScriptThingIndex(int,uchar)
35897A:  MOV             R9, R0
35897C:  SUB.W           R0, R8, #3
358980:  CMP             R0, #6
358982:  VSTR            S28, [SP,#0x88+var_58]
358986:  VSTR            S24, [SP,#0x88+var_54]
35898A:  VSTR            S22, [SP,#0x88+var_64]
35898E:  VSTR            S18, [SP,#0x88+var_60]
358992:  VSTR            S26, [SP,#0x88+var_5C]
358996:  VSTR            S20, [SP,#0x88+var_68]
35899A:  BCS             loc_3589AA
35899C:  LDR             R2, =(byte_81AFA0 - 0x3589A4)
35899E:  MOVS            R3, #0x60 ; '`'
3589A0:  ADD             R2, PC; byte_81AFA0
3589A2:  LDRB            R0, [R2]
3589A4:  LDRB            R1, [R2,#(byte_81AFA1 - 0x81AFA0)]
3589A6:  LDRB            R2, [R2,#(byte_81AFA2 - 0x81AFA0)]
3589A8:  B               loc_3589BE
3589AA:  CMP.W           R8, #2
3589AE:  BHI             loc_3589BE
3589B0:  LDR             R3, =(byte_81AF9C - 0x3589B6)
3589B2:  ADD             R3, PC; byte_81AF9C
3589B4:  LDRB            R0, [R3]
3589B6:  LDRB            R1, [R3,#(byte_81AF9D - 0x81AF9C)]
3589B8:  LDRB            R2, [R3,#(byte_81AF9E - 0x81AF9C)]
3589BA:  LDRB            R3, [R3,#(byte_81AF9F - 0x81AF9C)]
3589BC:  B               loc_3589BE
3589BE:  MOVW            R6, #0x999A
3589C2:  MOV.W           R12, #0
3589C6:  MOVT            R6, #0x3D99
3589CA:  MOV.W           R4, #0x400
3589CE:  UXTB            R3, R3
3589D0:  UXTB            R2, R2
3589D2:  UXTB            R1, R1
3589D4:  UXTB            R0, R0
3589D6:  ADD.W           LR, SP, #0x88+var_84
3589DA:  STM.W           LR, {R0-R4,R6,R12}
3589DE:  ADD             R2, SP, #0x88+var_5C; unsigned __int16
3589E0:  ADD             R3, SP, #0x88+var_68; CVector *
3589E2:  UXTH.W          R1, R8; unsigned int
3589E6:  MOV             R0, R9; this
3589E8:  VSTR            S16, [SP,#0x88+var_88]
3589EC:  BLX             j__ZN12CCheckpoints11PlaceMarkerEjtR7CVectorS1_fhhhhtfs; CCheckpoints::PlaceMarker(uint,ushort,CVector &,CVector &,float,uchar,uchar,uchar,uchar,ushort,float,short)
3589F0:  LDR             R1, =(_ZN11CTheScripts25NumberOfScriptCheckpointsE_ptr - 0x3589FA)
3589F2:  STR.W           R0, [R5,#-4]
3589F6:  ADD             R1, PC; _ZN11CTheScripts25NumberOfScriptCheckpointsE_ptr
3589F8:  LDR             R1, [R1]; CTheScripts::NumberOfScriptCheckpoints ...
3589FA:  LDRH            R0, [R1]; CTheScripts::NumberOfScriptCheckpoints
3589FC:  ADDS            R0, #1
3589FE:  STRH            R0, [R1]; CTheScripts::NumberOfScriptCheckpoints
358A00:  MOV             R0, R9
358A02:  ADD             SP, SP, #0x38 ; '8'
358A04:  VPOP            {D8-D14}
358A08:  POP.W           {R8,R9,R11}
358A0C:  POP             {R4-R7,PC}
