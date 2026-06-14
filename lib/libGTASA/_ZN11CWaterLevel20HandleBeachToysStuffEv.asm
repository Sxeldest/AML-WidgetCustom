; =========================================================
; Game Engine Function: _ZN11CWaterLevel20HandleBeachToysStuffEv
; Address            : 0x596C48 - 0x596C7E
; =========================================================

596C48:  PUSH            {R7,LR}
596C4A:  MOV             R7, SP
596C4C:  MOV.W           R0, #0xFFFFFFFF; int
596C50:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
596C54:  LDR             R0, =(byte_A1DCAC - 0x596C5A)
596C56:  ADD             R0, PC; byte_A1DCAC
596C58:  LDRB            R0, [R0]
596C5A:  DMB.W           ISH
596C5E:  TST.W           R0, #1
596C62:  IT NE
596C64:  POPNE           {R7,PC}
596C66:  LDR             R0, =(byte_A1DCAC - 0x596C6C)
596C68:  ADD             R0, PC; byte_A1DCAC ; __guard *
596C6A:  BLX             j___cxa_guard_acquire
596C6E:  CBZ             R0, locret_596C7C
596C70:  LDR             R0, =(byte_A1DCAC - 0x596C76)
596C72:  ADD             R0, PC; byte_A1DCAC ; __guard *
596C74:  POP.W           {R7,LR}
596C78:  B.W             sub_19B758
596C7C:  POP             {R7,PC}
