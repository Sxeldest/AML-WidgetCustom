; =========================================================
; Game Engine Function: _ZN28CPedDamageResponseCalculator15AdjustPedDamageEP4CPed
; Address            : 0x372164 - 0x3721C4
; =========================================================

372164:  PUSH            {R4,R5,R7,LR}
372166:  ADD             R7, SP, #8
372168:  MOV             R4, R0
37216A:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x372172)
37216C:  MOV             R5, R1
37216E:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
372170:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
372172:  LDRB.W          R0, [R0,#(byte_79683F - 0x7967F4)]
372176:  CBZ             R0, loc_37218A
372178:  LDR             R0, [R4,#0xC]
37217A:  CMP             R0, #2
37217C:  BCC             loc_372182
37217E:  CMP             R0, #0x2E ; '.'
372180:  BNE             loc_37218A
372182:  LDR.W           R0, [R5,#0x544]
372186:  STR             R0, [R4,#4]
372188:  B               loc_37218C
37218A:  CBZ             R5, locret_3721C2
37218C:  MOV.W           R0, #0xFFFFFFFF; int
372190:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
372194:  CMP             R0, R5
372196:  BNE             locret_3721C2
372198:  LDR             R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x37219E)
37219A:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
37219C:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
37219E:  LDR             R0, [R0]; CTheScripts::pActiveScripts
3721A0:  CBZ             R0, locret_3721C2
3721A2:  LDR             R1, =(aIntro1 - 0x3721AA); "intro1"
3721A4:  ADDS            R0, #8; char *
3721A6:  ADD             R1, PC; "intro1"
3721A8:  BLX             strcmp
3721AC:  CMP             R0, #0
3721AE:  IT NE
3721B0:  POPNE           {R4,R5,R7,PC}
3721B2:  VLDR            S0, =0.77
3721B6:  VLDR            S2, [R4,#4]
3721BA:  VMUL.F32        S0, S2, S0
3721BE:  VSTR            S0, [R4,#4]
3721C2:  POP             {R4,R5,R7,PC}
