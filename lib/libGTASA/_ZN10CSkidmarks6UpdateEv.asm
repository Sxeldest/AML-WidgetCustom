; =========================================================
; Game Engine Function: _ZN10CSkidmarks6UpdateEv
; Address            : 0x5BE7E8 - 0x5BE8A8
; =========================================================

5BE7E8:  PUSH            {R4-R7,LR}
5BE7EA:  ADD             R7, SP, #0xC
5BE7EC:  PUSH.W          {R8-R11}
5BE7F0:  LDR             R1, =(_ZN10CSkidmarks10aSkidmarksE_ptr - 0x5BE7FC)
5BE7F2:  MOVS            R2, #0
5BE7F4:  LDR             R4, =(_ZN10CSkidmarks10aSkidmarksE_ptr - 0x5BE800)
5BE7F6:  MOVS            R6, #0
5BE7F8:  ADD             R1, PC; _ZN10CSkidmarks10aSkidmarksE_ptr
5BE7FA:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5BE804)
5BE7FC:  ADD             R4, PC; _ZN10CSkidmarks10aSkidmarksE_ptr
5BE7FE:  LDR             R3, [R1]; CSkidmarks::aSkidmarks ...
5BE800:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5BE802:  LDR             R1, =(_ZN10CSkidmarks10aSkidmarksE_ptr - 0x5BE80E)
5BE804:  LDR.W           R11, [R4]; CSkidmarks::aSkidmarks ...
5BE808:  LDR             R4, =(_ZN10CSkidmarks10aSkidmarksE_ptr - 0x5BE812)
5BE80A:  ADD             R1, PC; _ZN10CSkidmarks10aSkidmarksE_ptr
5BE80C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5BE80E:  ADD             R4, PC; _ZN10CSkidmarks10aSkidmarksE_ptr
5BE810:  LDR.W           LR, [R1]; CSkidmarks::aSkidmarks ...
5BE814:  LDR             R1, =(_ZN10CSkidmarks10aSkidmarksE_ptr - 0x5BE820)
5BE816:  LDR.W           R9, [R4]; CSkidmarks::aSkidmarks ...
5BE81A:  LDR             R4, =(_ZN10CSkidmarks10aSkidmarksE_ptr - 0x5BE824)
5BE81C:  ADD             R1, PC; _ZN10CSkidmarks10aSkidmarksE_ptr
5BE81E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5BE820:  ADD             R4, PC; _ZN10CSkidmarks10aSkidmarksE_ptr
5BE822:  LDR             R1, [R1]; CSkidmarks::aSkidmarks ...
5BE824:  ADDW            R12, R0, #0x9C4
5BE828:  LDR.W           R10, [R4]; CSkidmarks::aSkidmarks ...
5BE82C:  ADDS            R5, R3, R6
5BE82E:  LDRB.W          R4, [R5,#0x156]
5BE832:  CMP             R4, #2
5BE834:  BEQ             loc_5BE85E
5BE836:  CMP             R4, #1
5BE838:  BNE             loc_5BE892
5BE83A:  ADD.W           R4, R11, R6
5BE83E:  LDRB.W          R4, [R4,#0x157]
5BE842:  CBNZ            R4, loc_5BE892
5BE844:  MOVS            R4, #2
5BE846:  STRB.W          R4, [R5,#0x156]
5BE84A:  ADD.W           R4, R9, R6
5BE84E:  LDRSH.W         R4, [R4,#0x154]
5BE852:  CMP             R4, #4
5BE854:  BGE             loc_5BE870
5BE856:  MOVW            R5, #0x1388
5BE85A:  MOV             R4, R12
5BE85C:  B               loc_5BE888
5BE85E:  ADD.W           R4, LR, R6
5BE862:  LDR.W           R4, [R4,#0x14C]
5BE866:  CMP             R0, R4
5BE868:  IT HI
5BE86A:  STRBHI.W        R2, [R5,#0x156]
5BE86E:  B               loc_5BE892
5BE870:  CMP             R4, #9
5BE872:  MOVW            R5, #0x4E20
5BE876:  MOVW            R4, #0x2710
5BE87A:  IT LT
5BE87C:  MOVWLT          R5, #0x2710
5BE880:  IT LT
5BE882:  MOVWLT          R4, #0x1388
5BE886:  ADD             R4, R0
5BE888:  ADD.W           R8, R10, R6
5BE88C:  ADD             R5, R0
5BE88E:  STRD.W          R4, R5, [R8,#0x148]
5BE892:  ADDS            R4, R1, R6
5BE894:  ADD.W           R6, R6, #0x158
5BE898:  CMP.W           R6, #0x2B00
5BE89C:  STRB.W          R2, [R4,#0x157]
5BE8A0:  BNE             loc_5BE82C
5BE8A2:  POP.W           {R8-R11}
5BE8A6:  POP             {R4-R7,PC}
