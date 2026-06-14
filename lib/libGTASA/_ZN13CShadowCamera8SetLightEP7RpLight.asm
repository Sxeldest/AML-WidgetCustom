; =========================================================
; Game Engine Function: _ZN13CShadowCamera8SetLightEP7RpLight
; Address            : 0x5B703C - 0x5B707E
; =========================================================

5B703C:  PUSH            {R4,R5,R7,LR}
5B703E:  ADD             R7, SP, #8
5B7040:  MOV             R4, R0
5B7042:  LDR             R1, [R1,#4]
5B7044:  LDR             R0, [R4]
5B7046:  VLDR            D16, [R1,#0x10]
5B704A:  LDR             R5, [R0,#4]
5B704C:  LDR             R0, [R1,#0x18]
5B704E:  STR             R0, [R5,#0x18]
5B7050:  VSTR            D16, [R5,#0x10]
5B7054:  VLDR            D16, [R1,#0x20]
5B7058:  LDR             R0, [R1,#0x28]
5B705A:  STR             R0, [R5,#0x28]
5B705C:  VSTR            D16, [R5,#0x20]
5B7060:  LDR             R0, [R1,#0x38]
5B7062:  VLDR            D16, [R1,#0x30]
5B7066:  STR             R0, [R5,#0x38]
5B7068:  ADD.W           R0, R5, #0x10
5B706C:  VSTR            D16, [R5,#0x30]
5B7070:  BLX.W           j__Z14RwMatrixUpdateP11RwMatrixTag; RwMatrixUpdate(RwMatrixTag *)
5B7074:  MOV             R0, R5
5B7076:  BLX.W           j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
5B707A:  LDR             R0, [R4]
5B707C:  POP             {R4,R5,R7,PC}
