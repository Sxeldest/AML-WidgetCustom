; =========================================================
; Game Engine Function: sub_158B8C
; Address            : 0x158B8C - 0x158BAE
; =========================================================

158B8C:  PUSH            {R4,R6,R7,LR}
158B8E:  ADD             R7, SP, #8
158B90:  MOV             R4, R0
158B92:  LDR             R0, =(_ZTVNSt6__ndk120__shared_ptr_emplaceI25AudioStreamDownloadStatusNS_9allocatorIS1_EEEE - 0x158B98); `vtable for'std::__shared_ptr_emplace<AudioStreamDownloadStatus> ...
158B94:  ADD             R0, PC; `vtable for'std::__shared_ptr_emplace<AudioStreamDownloadStatus>
158B96:  ADD.W           R1, R0, #8
158B9A:  MOV             R0, R4
158B9C:  STR.W           R1, [R0],#0xC
158BA0:  BL              sub_158BEA
158BA4:  MOV             R0, R4
158BA6:  POP.W           {R4,R6,R7,LR}
158BAA:  B.W             sub_2242D4
