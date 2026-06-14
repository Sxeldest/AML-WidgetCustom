; =========================================================
; Game Engine Function: _ZN10TouchSenseC2Ev
; Address            : 0x270680 - 0x27075E
; =========================================================

270680:  PUSH            {R4-R7,LR}; Alternative name is 'TouchSense::TouchSense(void)'
270682:  ADD             R7, SP, #0xC
270684:  PUSH.W          {R11}
270688:  MOV             R4, R0
27068A:  LDR             R0, =(UseTouchSense_ptr - 0x27069A)
27068C:  ADR             R1, dword_270760
27068E:  MOVS            R2, #2
270690:  VLD1.64         {D16-D17}, [R1@128]
270694:  MOVS            R1, #0
270696:  ADD             R0, PC; UseTouchSense_ptr
270698:  STRB            R1, [R4,#4]
27069A:  STR             R2, [R4]
27069C:  MOVS            R2, #0x64 ; 'd'
27069E:  STR             R2, [R4,#0x18]
2706A0:  STRB            R1, [R4,#0x1C]
2706A2:  STR             R1, [R4,#0x20]
2706A4:  MOV.W           R1, #0xFFFFFFFF
2706A8:  STRD.W          R1, R1, [R4,#0x28]
2706AC:  ADD.W           R1, R4, #8
2706B0:  LDR             R0, [R0]; UseTouchSense
2706B2:  VST1.32         {D16-D17}, [R1]
2706B6:  LDRB            R0, [R0]
2706B8:  CMP             R0, #0
2706BA:  BEQ             loc_270756
2706BC:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
2706C0:  LDR             R0, =(globalVM_ptr - 0x2706CA)
2706C2:  MOVS            R5, #0
2706C4:  LDR             R1, =(dword_6D81DC - 0x2706CC)
2706C6:  ADD             R0, PC; globalVM_ptr
2706C8:  ADD             R1, PC; dword_6D81DC
2706CA:  LDR             R0, [R0]; globalVM
2706CC:  LDR             R2, [R1]
2706CE:  LDR             R1, [R0]
2706D0:  MOVS            R0, #0
2706D2:  BLX             ImmVibeInitialize2
2706D6:  CMP.W           R0, #0xFFFFFFFF
2706DA:  BLE             loc_270734
2706DC:  ADD.W           R1, R4, #0x24 ; '$'
2706E0:  MOVS            R0, #0
2706E2:  MOVS            R5, #0
2706E4:  BLX             ImmVibeOpenDevice
2706E8:  CMP.W           R0, #0xFFFFFFFF
2706EC:  BLE             loc_270744
2706EE:  MOVS            R0, #0x28 ; '('; byte_count
2706F0:  BLX             malloc
2706F4:  MOV             R5, R0
2706F6:  LDR             R0, =(_ZN10TouchSense10threadFuncEPv_ptr - 0x270700)
2706F8:  ADR             R1, aTouchsense; "Touchsense"
2706FA:  MOVS            R2, #0x1F; size_t
2706FC:  ADD             R0, PC; _ZN10TouchSense10threadFuncEPv_ptr
2706FE:  LDR             R0, [R0]; TouchSense::threadFunc(void *)
270700:  STRD.W          R4, R0, [R5]
270704:  ADD.W           R0, R5, #8; char *
270708:  BLX             strncpy
27070C:  LDR             R0, =(g_thread_ptr - 0x270718)
27070E:  MOVS            R1, #0; attr
270710:  LDR             R2, =(sub_27A128+1 - 0x27071C)
270712:  MOV             R3, R5; arg
270714:  ADD             R0, PC; g_thread_ptr
270716:  MOVS            R6, #0
270718:  ADD             R2, PC; sub_27A128 ; start_routine
27071A:  LDR             R0, [R0]; g_thread ; newthread
27071C:  BLX             pthread_create
270720:  CMP             R0, #0
270722:  BEQ             loc_270756
270724:  MOV             R0, R5; p
270726:  BLX             free
27072A:  LDR             R0, [R4,#0x24]
27072C:  STR             R6, [R4]
27072E:  BLX             ImmVibeCloseDevice
270732:  B               loc_270752
270734:  LDR             R1, =(aTouchsenseGta3 - 0x27073E); "TouchSense-GTA3"
270736:  ADR             R2, aFailedToInitia; "FAILED TO INITIALIZE TOUCHSENSE!"
270738:  MOVS            R0, #6; prio
27073A:  ADD             R1, PC; "TouchSense-GTA3"
27073C:  BLX             __android_log_print
270740:  STR             R5, [R4]
270742:  B               loc_270756
270744:  LDR             R1, =(aTouchsenseGta3 - 0x27074E); "TouchSense-GTA3"
270746:  ADR             R2, aFailedToOpenTo; "FAILED TO OPEN TOUCHSENSE DEVICE!"
270748:  MOVS            R0, #6; prio
27074A:  ADD             R1, PC; "TouchSense-GTA3"
27074C:  BLX             __android_log_print
270750:  STR             R5, [R4]
270752:  BLX             ImmVibeTerminate
270756:  MOV             R0, R4
270758:  POP.W           {R11}
27075C:  POP             {R4-R7,PC}
