; =========================================================
; Game Engine Function: sub_E046C
; Address            : 0xE046C - 0xE0498
; =========================================================

E046C:  PUSH            {R4,R5,R7,LR}
E046E:  ADD             R7, SP, #8
E0470:  LDR             R5, [R0,#4]
E0472:  MOV             R4, R2
E0474:  CMP             R5, R2
E0476:  IT CC
E0478:  MOVCC           R2, R5; n
E047A:  CBZ             R2, loc_E0486
E047C:  LDR             R0, [R0]; s1
E047E:  BLX             memcmp
E0482:  CBZ             R0, loc_E0486
E0484:  POP             {R4,R5,R7,PC}
E0486:  MOVS            R1, #1
E0488:  CMP             R5, R4
E048A:  IT CC
E048C:  MOVCC.W         R1, #0xFFFFFFFF
E0490:  SUBS            R0, R5, R4
E0492:  IT NE
E0494:  MOVNE           R0, R1
E0496:  POP             {R4,R5,R7,PC}
