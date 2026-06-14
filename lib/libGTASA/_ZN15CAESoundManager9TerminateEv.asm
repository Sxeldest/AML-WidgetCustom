; =========================================================
; Game Engine Function: _ZN15CAESoundManager9TerminateEv
; Address            : 0x3A8048 - 0x3A8092
; =========================================================

3A8048:  PUSH            {R4-R7,LR}
3A804A:  ADD             R7, SP, #0xC
3A804C:  PUSH.W          {R11}
3A8050:  MOV             R4, R0
3A8052:  MOVW            R5, #0x87F4
3A8056:  LDR             R0, [R4,R5]
3A8058:  CMP             R0, #0
3A805A:  ITT NE
3A805C:  SUBNE           R0, #8; void *
3A805E:  BLXNE           _ZdaPv; operator delete[](void *)
3A8062:  MOVW            R1, #0x87F8
3A8066:  ADD             R5, R4
3A8068:  LDR             R0, [R4,R1]; void *
3A806A:  ADDS            R6, R4, R1
3A806C:  CMP             R0, #0
3A806E:  IT NE
3A8070:  BLXNE           _ZdaPv; operator delete[](void *)
3A8074:  MOVW            R1, #0x87FC
3A8078:  LDR             R0, [R4,R1]; void *
3A807A:  ADD             R4, R1
3A807C:  CMP             R0, #0
3A807E:  IT NE
3A8080:  BLXNE           _ZdaPv; operator delete[](void *)
3A8084:  MOVS            R0, #0
3A8086:  STR             R0, [R5]
3A8088:  STR             R0, [R6]
3A808A:  STR             R0, [R4]
3A808C:  POP.W           {R11}
3A8090:  POP             {R4-R7,PC}
