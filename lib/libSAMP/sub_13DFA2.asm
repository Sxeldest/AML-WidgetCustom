; =========================================================
; Game Engine Function: sub_13DFA2
; Address            : 0x13DFA2 - 0x13E036
; =========================================================

13DFA2:  PUSH            {R4-R7,LR}
13DFA4:  ADD             R7, SP, #0xC
13DFA6:  PUSH.W          {R8}
13DFAA:  SUB             SP, SP, #8
13DFAC:  VMOV.I32        Q8, #0
13DFB0:  MOV             R4, R0
13DFB2:  MOV             R6, R4
13DFB4:  MOV             R5, R1
13DFB6:  MOVS            R1, #0x1C
13DFB8:  MOVS            R0, #0
13DFBA:  VST1.32         {D16-D17}, [R6]!
13DFBE:  MOV             R8, R4
13DFC0:  VST1.32         {D16-D17}, [R6],R1
13DFC4:  STRD.W          R0, R0, [R4,#0x34]
13DFC8:  STRB            R0, [R6]
13DFCA:  MOV.W           R0, #0xFFFFFFFF
13DFCE:  STR.W           R0, [R8,#0x30]!
13DFD2:  SUB.W           R1, R7, #-var_11; int
13DFD6:  MOV             R0, R5; int
13DFD8:  MOVS            R2, #8
13DFDA:  MOVS            R3, #1
13DFDC:  BL              sub_17D786
13DFE0:  LDRB.W          R2, [R7,#var_11]
13DFE4:  MOV             R0, R5; int
13DFE6:  MOV             R1, R4; dest
13DFE8:  BL              sub_17D744
13DFEC:  ADD.W           R1, R4, #0x20 ; ' '; int
13DFF0:  MOV             R0, R5; int
13DFF2:  MOVS            R2, #0x20 ; ' '
13DFF4:  MOVS            R3, #1
13DFF6:  BL              sub_17D786
13DFFA:  ADD.W           R1, R4, #0x24 ; '$'; int
13DFFE:  MOV             R0, R5; int
13E000:  MOVS            R2, #0x20 ; ' '
13E002:  MOVS            R3, #1
13E004:  BL              sub_17D786
13E008:  ADD.W           R1, R4, #0x28 ; '('; int
13E00C:  MOV             R0, R5; int
13E00E:  MOVS            R2, #0x20 ; ' '
13E010:  MOVS            R3, #1
13E012:  BL              sub_17D786
13E016:  MOV             R0, R5; int
13E018:  MOV             R1, R6; int
13E01A:  MOVS            R2, #8
13E01C:  MOVS            R3, #1
13E01E:  BL              sub_17D786
13E022:  MOV             R0, R5; int
13E024:  MOV             R1, R8; int
13E026:  MOVS            R2, #0x20 ; ' '
13E028:  MOVS            R3, #1
13E02A:  BL              sub_17D786
13E02E:  ADD             SP, SP, #8
13E030:  POP.W           {R8}
13E034:  POP             {R4-R7,PC}
