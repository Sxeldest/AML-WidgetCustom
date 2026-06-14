; =========================================================
; Game Engine Function: StopThread
; Address            : 0x1E252C - 0x1E2558
; =========================================================

1E252C:  PUSH            {R4,R5,R11,LR}
1E2530:  ADD             R11, SP, #8
1E2534:  MOV             R4, R0
1E2538:  MOV             R1, #0; thread_return
1E253C:  LDR             R0, [R4,#0xC]; th
1E2540:  BL              pthread_join
1E2544:  MOV             R0, R4; ptr
1E2548:  LDR             R5, [R4,#8]
1E254C:  BL              free
1E2550:  MOV             R0, R5
1E2554:  POP             {R4,R5,R11,PC}
