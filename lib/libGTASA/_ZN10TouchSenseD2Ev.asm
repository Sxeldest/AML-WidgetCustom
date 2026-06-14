; =========================================================
; Game Engine Function: _ZN10TouchSenseD2Ev
; Address            : 0x270800 - 0x270856
; =========================================================

270800:  PUSH            {R4,R5,R7,LR}; Alternative name is 'TouchSense::~TouchSense()'
270802:  ADD             R7, SP, #8
270804:  MOV             R4, R0
270806:  LDR             R0, =(UseTouchSense_ptr - 0x27080C)
270808:  ADD             R0, PC; UseTouchSense_ptr
27080A:  LDR             R0, [R0]; UseTouchSense
27080C:  LDRB            R0, [R0]
27080E:  CBZ             R0, loc_270852
270810:  LDR             R0, =(g_accessMutex_ptr - 0x270816)
270812:  ADD             R0, PC; g_accessMutex_ptr
270814:  LDR             R5, [R0]; g_accessMutex
270816:  MOV             R0, R5; mutex
270818:  BLX             pthread_mutex_lock
27081C:  LDR             R0, =(g_cond_ptr - 0x270826)
27081E:  MOVS            R1, #1
270820:  STRB            R1, [R4,#0x1C]
270822:  ADD             R0, PC; g_cond_ptr
270824:  LDR             R0, [R0]; g_cond ; cond
270826:  BLX             pthread_cond_signal
27082A:  MOV             R0, R5; mutex
27082C:  BLX             pthread_mutex_unlock
270830:  LDR             R0, =(g_thread_ptr - 0x270838)
270832:  MOVS            R1, #0; thread_return
270834:  ADD             R0, PC; g_thread_ptr
270836:  LDR             R0, [R0]; g_thread
270838:  LDR             R0, [R0]; th
27083A:  BLX             pthread_join
27083E:  LDR             R0, [R4,#0x20]; void *
270840:  CMP             R0, #0
270842:  IT NE
270844:  BLXNE           _ZdaPv; operator delete[](void *)
270848:  LDR             R0, [R4,#0x24]
27084A:  BLX             ImmVibeCloseDevice
27084E:  BLX             ImmVibeTerminate
270852:  MOV             R0, R4
270854:  POP             {R4,R5,R7,PC}
