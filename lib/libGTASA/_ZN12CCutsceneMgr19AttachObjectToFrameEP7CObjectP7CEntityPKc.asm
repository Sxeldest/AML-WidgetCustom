; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr19AttachObjectToFrameEP7CObjectP7CEntityPKc
; Address            : 0x4650EA - 0x465102
; =========================================================

4650EA:  PUSH            {R4,R6,R7,LR}
4650EC:  ADD             R7, SP, #8
4650EE:  MOV             R4, R0
4650F0:  LDR             R0, [R1,#0x18]
4650F2:  MOV             R1, R2
4650F4:  BLX             j__Z25RpAnimBlendClumpFindFrameP7RpClumpPKc; RpAnimBlendClumpFindFrame(RpClump *,char const*)
4650F8:  MOVS            R1, #0
4650FA:  LDR             R0, [R0,#0x10]
4650FC:  STRD.W          R0, R1, [R4,#0x184]
465100:  POP             {R4,R6,R7,PC}
