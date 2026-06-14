; =========================================================
; Game Engine Function: sub_6584C
; Address            : 0x6584C - 0x658B2
; =========================================================

6584C:  PUSH            {R7,LR}
6584E:  MOV             R7, SP
65850:  LDR             R0, =(byte_1A4040 - 0x65856)
65852:  ADD             R0, PC; byte_1A4040
65854:  LDRB            R0, [R0]
65856:  DMB.W           ISH
6585A:  LSLS            R0, R0, #0x1F
6585C:  IT NE
6585E:  POPNE           {R7,PC}
65860:  LDR             R0, =(byte_1A4040 - 0x65866)
65862:  ADD             R0, PC; byte_1A4040 ; __guard *
65864:  BLX             j___cxa_guard_acquire
65868:  CBZ             R0, locret_658B0
6586A:  LDR             R0, =(unk_50D38 - 0x65876)
6586C:  MOV.W           R12, #0xD
65870:  LDR             R1, =(unk_1A4000 - 0x6587C)
65872:  ADD             R0, PC; unk_50D38
65874:  VLD1.64         {D16-D17}, [R0]!
65878:  ADD             R1, PC; unk_1A4000 ; obj
6587A:  VLD1.64         {D18-D19}, [R0]!
6587E:  MOV             R3, R1
65880:  VLD1.64         {D20-D21}, [R0],R12
65884:  VLD1.8          {D22-D23}, [R0]
65888:  LDR             R0, =(sub_6717E+1 - 0x65894)
6588A:  LDR             R2, =(off_110560 - 0x65896)
6588C:  VST1.64         {D16-D17}, [R3@128]!
65890:  ADD             R0, PC; sub_6717E ; lpfunc
65892:  ADD             R2, PC; off_110560 ; lpdso_handle
65894:  VST1.64         {D18-D19}, [R3@128]!
65898:  VST1.64         {D20-D21}, [R3@128],R12
6589C:  VST1.8          {D22-D23}, [R3]
658A0:  BLX             __cxa_atexit
658A4:  LDR             R0, =(byte_1A4040 - 0x658AA)
658A6:  ADD             R0, PC; byte_1A4040
658A8:  POP.W           {R7,LR}
658AC:  B.W             sub_10C14C
658B0:  POP             {R7,PC}
