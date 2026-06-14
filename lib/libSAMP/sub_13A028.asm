; =========================================================
; Game Engine Function: sub_13A028
; Address            : 0x13A028 - 0x13A0B6
; =========================================================

13A028:  PUSH            {R4-R7,LR}
13A02A:  ADD             R7, SP, #0xC
13A02C:  PUSH.W          {R8}
13A030:  MOV             R4, R0
13A032:  BL              sub_12BC78
13A036:  LDR             R0, =(_ZTV6Dialog - 0x13A046); `vtable for'Dialog ...
13A038:  VMOV.I32        Q8, #0
13A03C:  ADD.W           R8, R4, #0x54 ; 'T'
13A040:  MOVS            R1, #0
13A042:  ADD             R0, PC; `vtable for'Dialog
13A044:  MOV             R6, R4
13A046:  ADDS            R0, #8
13A048:  STR             R0, [R4]
13A04A:  MOV             R0, R8
13A04C:  MOVS            R2, #1
13A04E:  VST1.32         {D16-D17}, [R0]!
13A052:  STR.W           R1, [R6,#0x7C]!
13A056:  STRB.W          R2, [R4,#0x53]
13A05A:  MOV.W           R2, #0x3F800000
13A05E:  STRD.W          R1, R1, [R4,#0x80]
13A062:  STR             R2, [R0]
13A064:  MOVS            R0, #0x58 ; 'X'; unsigned int
13A066:  BLX             j__Znwj; operator new(uint)
13A06A:  MOV             R5, R0
13A06C:  BL              sub_13A804
13A070:  STR             R5, [R4,#0x68]
13A072:  MOV             R0, R4
13A074:  MOV             R1, R5
13A076:  BL              sub_12BDF6
13A07A:  MOVS            R0, #0x5C ; '\'; unsigned int
13A07C:  BLX             j__Znwj; operator new(uint)
13A080:  MOV             R5, R0
13A082:  BL              sub_139CE4
13A086:  STR             R5, [R4,#0x6C]
13A088:  MOV             R0, R4
13A08A:  MOV             R1, R5
13A08C:  BL              sub_12BDF6
13A090:  MOVS            R0, #0x74 ; 't'; unsigned int
13A092:  BLX             j__Znwj; operator new(uint)
13A096:  MOV             R5, R0
13A098:  BL              sub_13A948
13A09C:  STR             R5, [R4,#0x70]
13A09E:  MOV             R0, R4
13A0A0:  MOV             R1, R5
13A0A2:  BL              sub_12BDF6
13A0A6:  MOVW            R0, #0xFFFF
13A0AA:  STRH.W          R0, [R4,#0x74]
13A0AE:  MOV             R0, R4
13A0B0:  POP.W           {R8}
13A0B4:  POP             {R4-R7,PC}
