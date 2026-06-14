; =========================================================
; Game Engine Function: _ZN6CRadar16SetBlipEntryExitEiP10CEntryExit
; Address            : 0x442D70 - 0x442DC0
; =========================================================

442D70:  PUSH            {R7,LR}
442D72:  MOV             R7, SP
442D74:  ADDS            R2, R0, #1
442D76:  BEQ             locret_442DBE
442D78:  LDR.W           R12, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442D88)
442D7C:  UXTH.W          LR, R0
442D80:  MOV.W           R3, LR,LSL#2
442D84:  ADD             R12, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442D86:  UXTAH.W         R3, R3, R0
442D8A:  LDR.W           R2, [R12]; CRadar::ms_RadarTrace ...
442D8E:  ADD.W           R2, R2, R3,LSL#3
442D92:  LDRH            R2, [R2,#0x14]
442D94:  CMP.W           R2, R0,LSR#16
442D98:  BNE             locret_442DBE
442D9A:  LDR             R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442DA0)
442D9C:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442D9E:  LDR             R2, [R0]; CRadar::ms_RadarTrace ...
442DA0:  ADD.W           R0, LR, LR,LSL#2
442DA4:  ADD.W           R2, R2, R0,LSL#3
442DA8:  LDRB.W          R2, [R2,#0x25]
442DAC:  LSLS            R2, R2, #0x1E
442DAE:  IT PL
442DB0:  POPPL           {R7,PC}
442DB2:  LDR             R2, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442DB8)
442DB4:  ADD             R2, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442DB6:  LDR             R2, [R2]; CRadar::ms_RadarTrace ...
442DB8:  ADD.W           R0, R2, R0,LSL#3
442DBC:  STR             R1, [R0,#0x20]
442DBE:  POP             {R7,PC}
