; =========================================================
; Game Engine Function: sub_21431E
; Address            : 0x21431E - 0x21433E
; =========================================================

21431E:  PUSH            {R4,R6,R7,LR}
214320:  ADD             R7, SP, #8
214322:  MOV             R4, R0
214324:  LDRB.W          R0, [R4,#0x4C]
214328:  LSLS            R0, R0, #0x1E
21432A:  ITT MI
21432C:  MOVMI           R0, R4
21432E:  BLXMI           j__Z33_rpAtomicResyncInterpolatedSphereP8RpAtomic; _rpAtomicResyncInterpolatedSphere(RpAtomic *)
214332:  LDRB            R0, [R4,#3]
214334:  ORR.W           R0, R0, #1
214338:  STRB            R0, [R4,#3]
21433A:  MOV             R0, R4
21433C:  POP             {R4,R6,R7,PC}
