; =========================================================
; Game Engine Function: _ZN4CPad19GetLookBehindForCarEv
; Address            : 0x3FA4FA - 0x3FA52E
; =========================================================

3FA4FA:  PUSH            {R7,LR}
3FA4FC:  MOV             R7, SP
3FA4FE:  LDRH.W          R0, [R0,#0x110]
3FA502:  CBZ             R0, loc_3FA508
3FA504:  MOVS            R0, #0
3FA506:  POP             {R7,PC}
3FA508:  MOV.W           R0, #0xFFFFFFFF; int
3FA50C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FA510:  CBZ             R0, loc_3FA522
3FA512:  MOV.W           R0, #0xFFFFFFFF; int
3FA516:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FA51A:  LDRB.W          R0, [R0,#0x485]
3FA51E:  LSLS            R0, R0, #0x1F
3FA520:  BEQ             loc_3FA504
3FA522:  MOVS            R0, #0xAF
3FA524:  MOVS            R1, #1
3FA526:  POP.W           {R7,LR}
3FA52A:  B.W             sub_18F150
