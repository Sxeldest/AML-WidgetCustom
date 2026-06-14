; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr18AttachObjectToBoneEP7CObjectS1_i
; Address            : 0x464B2C - 0x464B50
; =========================================================

464B2C:  PUSH            {R4-R7,LR}
464B2E:  ADD             R7, SP, #0xC
464B30:  PUSH.W          {R11}
464B34:  MOV             R5, R1
464B36:  MOV             R6, R0
464B38:  LDR             R0, [R5,#0x18]
464B3A:  MOV             R4, R2
464B3C:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
464B40:  MOV             R1, R4
464B42:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
464B46:  STRD.W          R0, R5, [R6,#0x184]
464B4A:  POP.W           {R11}
464B4E:  POP             {R4-R7,PC}
