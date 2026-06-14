; =========================================================
; Game Engine Function: _ZN5CBike25GetComponentWorldPositionEiR7CVector
; Address            : 0x560C74 - 0x560C9A
; =========================================================

560C74:  PUSH            {R4,R6,R7,LR}
560C76:  ADD             R7, SP, #8
560C78:  ADD.W           R0, R0, R1,LSL#2
560C7C:  MOV             R4, R2
560C7E:  LDR.W           R0, [R0,#0x5B4]
560C82:  CMP             R0, #0
560C84:  IT EQ
560C86:  POPEQ           {R4,R6,R7,PC}
560C88:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
560C8C:  VLDR            D16, [R0,#0x30]
560C90:  LDR             R0, [R0,#0x38]
560C92:  STR             R0, [R4,#8]
560C94:  VSTR            D16, [R4]
560C98:  POP             {R4,R6,R7,PC}
