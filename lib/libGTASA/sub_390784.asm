; =========================================================
; Game Engine Function: sub_390784
; Address            : 0x390784 - 0x390798
; =========================================================

390784:  PUSH            {R4,R5,R7,LR}
390786:  ADD             R7, SP, #8
390788:  MOV             R5, R0
39078A:  MOV             R4, R1
39078C:  LDR             R0, [R5,#0x10]
39078E:  BLX             j__ZN18CVisibilityPlugins19GetFrameHierarchyIdEP7RwFrame; CVisibilityPlugins::GetFrameHierarchyId(RwFrame *)
390792:  STR.W           R5, [R4,R0,LSL#2]
390796:  POP             {R4,R5,R7,PC}
