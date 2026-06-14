; =========================================================
; Game Engine Function: _ZN22CDamageAtomicModelInfo14DeleteRwObjectEv
; Address            : 0x384F38 - 0x384F5A
; =========================================================

384F38:  PUSH            {R4,R5,R7,LR}
384F3A:  ADD             R7, SP, #8
384F3C:  MOV             R4, R0
384F3E:  LDR             R0, [R4,#0x38]
384F40:  CBZ             R0, loc_384F52
384F42:  LDR             R5, [R0,#4]
384F44:  BLX             j__Z15RpAtomicDestroyP8RpAtomic; RpAtomicDestroy(RpAtomic *)
384F48:  MOV             R0, R5
384F4A:  BLX             j__Z14RwFrameDestroyP7RwFrame; RwFrameDestroy(RwFrame *)
384F4E:  MOVS            R0, #0
384F50:  STR             R0, [R4,#0x38]
384F52:  MOV             R0, R4; this
384F54:  POP.W           {R4,R5,R7,LR}
384F58:  B               _ZN16CAtomicModelInfo14DeleteRwObjectEv; CAtomicModelInfo::DeleteRwObject(void)
