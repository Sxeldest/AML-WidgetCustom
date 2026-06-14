; =========================================================
; Game Engine Function: _ZN7CCamera16RenderMotionBlurEv
; Address            : 0x3E134E - 0x3E137E
; =========================================================

3E134E:  LDR.W           R12, [R0,#0x8C]
3E1352:  CMP.W           R12, #0
3E1356:  IT EQ
3E1358:  BXEQ            LR
3E135A:  PUSH            {R4,R6,R7,LR}
3E135C:  ADD             R7, SP, #0x10+var_8
3E135E:  SUB             SP, SP, #0x10
3E1360:  LDRD.W          R3, R2, [R0,#0x80]
3E1364:  LDR.W           R1, [R0,#0x88]
3E1368:  LDRD.W          LR, R4, [R0,#0x9C]
3E136C:  LDR.W           R0, [R0,#0x8D8]
3E1370:  STRD.W          LR, R12, [SP,#0x20+var_20]
3E1374:  STR             R4, [SP,#0x20+var_18]
3E1376:  BLX             j__ZN6CMBlur16MotionBlurRenderEP8RwCamerajjjjij; CMBlur::MotionBlurRender(RwCamera *,uint,uint,uint,uint,int,uint)
3E137A:  ADD             SP, SP, #0x10
3E137C:  POP             {R4,R6,R7,PC}
