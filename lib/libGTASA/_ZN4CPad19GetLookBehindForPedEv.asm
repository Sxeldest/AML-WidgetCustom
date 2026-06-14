; =========================================================
; Game Engine Function: _ZN4CPad19GetLookBehindForPedEv
; Address            : 0x3FA52E - 0x3FA556
; =========================================================

3FA52E:  LDRH.W          R1, [R0,#0x110]
3FA532:  CBZ             R1, loc_3FA538
3FA534:  MOVS            R0, #0
3FA536:  BX              LR
3FA538:  LDRB.W          R0, [R0,#0x145]; this
3FA53C:  CBZ             R0, loc_3FA54E
3FA53E:  PUSH            {R7,LR}
3FA540:  MOV             R7, SP
3FA542:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3FA546:  CMP             R0, #0
3FA548:  POP.W           {R7,LR}
3FA54C:  BEQ             loc_3FA534
3FA54E:  MOVS            R0, #0xAF
3FA550:  MOVS            R1, #1
3FA552:  B.W             sub_18F150
