; =========================================================
; Game Engine Function: _ZN21CAnimBlendAssociation18ReferenceAnimBlockEv
; Address            : 0x389D42 - 0x389D64
; =========================================================

389D42:  PUSH            {R4,R6,R7,LR}
389D44:  ADD             R7, SP, #8
389D46:  MOV             R4, R0
389D48:  LDRB.W          R0, [R4,#0x2F]
389D4C:  LSLS            R0, R0, #0x19
389D4E:  IT MI
389D50:  POPMI           {R4,R6,R7,PC}
389D52:  LDR             R0, [R4,#0x14]
389D54:  LDR             R0, [R0,#0xC]; this
389D56:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
389D5A:  LDRH            R0, [R4,#0x2E]
389D5C:  ORR.W           R0, R0, #0x4000
389D60:  STRH            R0, [R4,#0x2E]
389D62:  POP             {R4,R6,R7,PC}
