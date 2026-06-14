; =========================================================
; Game Engine Function: _Z22MaterialUpdateUVAnimCBP10RpMaterialPv
; Address            : 0x3EC200 - 0x3EC232
; =========================================================

3EC200:  PUSH            {R4,R6,R7,LR}
3EC202:  ADD             R7, SP, #8
3EC204:  MOV             R4, R0
3EC206:  BLX             j__Z22RpMaterialUVAnimExistsPK10RpMaterial; RpMaterialUVAnimExists(RpMaterial const*)
3EC20A:  CBZ             R0, loc_3EC22E
3EC20C:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3EC216)
3EC20E:  VLDR            S0, =50.0
3EC212:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3EC214:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3EC216:  VLDR            S2, [R0]
3EC21A:  MOV             R0, R4
3EC21C:  VDIV.F32        S0, S2, S0
3EC220:  VMOV            R1, S0
3EC224:  BLX             j__Z27RpMaterialUVAnimAddAnimTimeP10RpMaterialf; RpMaterialUVAnimAddAnimTime(RpMaterial *,float)
3EC228:  MOV             R0, R4
3EC22A:  BLX             j__Z27RpMaterialUVAnimApplyUpdateP10RpMaterial; RpMaterialUVAnimApplyUpdate(RpMaterial *)
3EC22E:  MOV             R0, R4
3EC230:  POP             {R4,R6,R7,PC}
