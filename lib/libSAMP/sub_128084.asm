; =========================================================
; Game Engine Function: sub_128084
; Address            : 0x128084 - 0x1280C4
; =========================================================

128084:  PUSH            {R7,LR}
128086:  MOV             R7, SP
128088:  LDR             R0, =(byte_314108 - 0x12808E)
12808A:  ADD             R0, PC; byte_314108
12808C:  LDRB            R0, [R0]
12808E:  DMB.W           ISH
128092:  LSLS            R0, R0, #0x1F
128094:  IT NE
128096:  POPNE           {R7,PC}
128098:  LDR             R0, =(byte_314108 - 0x12809E)
12809A:  ADD             R0, PC; byte_314108 ; __guard *
12809C:  BLX             j___cxa_guard_acquire
1280A0:  CBZ             R0, locret_1280C2
1280A2:  LDR             R1, =(unk_3140F0 - 0x1280AE)
1280A4:  MOVS            R3, #0
1280A6:  LDR             R0, =(sub_127B54+1 - 0x1280B0)
1280A8:  LDR             R2, =(off_22A540 - 0x1280B2)
1280AA:  ADD             R1, PC; unk_3140F0 ; obj
1280AC:  ADD             R0, PC; sub_127B54 ; lpfunc
1280AE:  ADD             R2, PC; off_22A540 ; lpdso_handle
1280B0:  STR             R3, [R1,#(dword_314100 - 0x3140F0)]
1280B2:  BLX             __cxa_atexit
1280B6:  LDR             R0, =(byte_314108 - 0x1280BC)
1280B8:  ADD             R0, PC; byte_314108
1280BA:  POP.W           {R7,LR}
1280BE:  B.W             sub_2242B0
1280C2:  POP             {R7,PC}
