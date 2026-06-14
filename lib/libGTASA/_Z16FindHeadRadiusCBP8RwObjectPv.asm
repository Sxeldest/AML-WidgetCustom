; =========================================================
; Game Engine Function: _Z16FindHeadRadiusCBP8RwObjectPv
; Address            : 0x3868E8 - 0x386906
; =========================================================

3868E8:  PUSH            {R4,R5,R7,LR}
3868EA:  ADD             R7, SP, #8
3868EC:  MOV             R5, R0
3868EE:  MOV             R4, R1
3868F0:  LDRB.W          R0, [R5,#0x4C]
3868F4:  LSLS            R0, R0, #0x1E
3868F6:  ITT MI
3868F8:  MOVMI           R0, R5
3868FA:  BLXMI           j__Z33_rpAtomicResyncInterpolatedSphereP8RpAtomic; _rpAtomicResyncInterpolatedSphere(RpAtomic *)
3868FE:  LDR             R0, [R5,#0x28]
386900:  STR             R0, [R4]
386902:  MOVS            R0, #0
386904:  POP             {R4,R5,R7,PC}
