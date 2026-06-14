; =========================================================
; Game Engine Function: sub_2659D4
; Address            : 0x2659D4 - 0x2659F2
; =========================================================

2659D4:  MOV             R1, #0x161B0
2659DC:  LDR             R1, [R0,R1]
2659DE:  LDR             R0, [R1,#4]
2659E0:  CMP             R0, #0
2659E2:  IT EQ
2659E4:  BXEQ            LR
2659E6:  LDR             R0, [R1]
2659E8:  MOVS            R2, #0
2659EA:  STR             R2, [R1,#4]
2659EC:  MOVS            R1, #0
2659EE:  B.W             j_pthread_join
