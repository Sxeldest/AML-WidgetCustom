; =========================================================
; Game Engine Function: _ZN9C3dMarker18DeleteMarkerObjectEv
; Address            : 0x5C3134 - 0x5C3160
; =========================================================

5C3134:  PUSH            {R4-R7,LR}
5C3136:  ADD             R7, SP, #0xC
5C3138:  PUSH.W          {R11}
5C313C:  MOV             R4, R0
5C313E:  MOVS            R6, #0
5C3140:  STR             R6, [R4,#0x60]
5C3142:  MOVW            R1, #0x101
5C3146:  LDR             R0, [R4,#0x48]
5C3148:  STRD.W          R1, R6, [R4,#0x50]
5C314C:  LDR             R5, [R0,#4]
5C314E:  BLX.W           j__Z15RpAtomicDestroyP8RpAtomic; RpAtomicDestroy(RpAtomic *)
5C3152:  MOV             R0, R5
5C3154:  BLX.W           j__Z14RwFrameDestroyP7RwFrame; RwFrameDestroy(RwFrame *)
5C3158:  STR             R6, [R4,#0x48]
5C315A:  POP.W           {R11}
5C315E:  POP             {R4-R7,PC}
