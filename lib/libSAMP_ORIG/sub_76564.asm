; =========================================================
; Game Engine Function: sub_76564
; Address            : 0x76564 - 0x7671A
; =========================================================

76564:  PUSH            {R4,R5,R7,LR}
76566:  ADD             R7, SP, #8
76568:  SUB.W           SP, SP, #0x208
7656C:  LDR             R0, =(off_114AA8 - 0x76574)
7656E:  LDR             R1, =(__stack_chk_guard_ptr - 0x76576)
76570:  ADD             R0, PC; off_114AA8
76572:  ADD             R1, PC; __stack_chk_guard_ptr
76574:  LDR             R0, [R0]; dword_1A4404
76576:  LDR             R1, [R1]; __stack_chk_guard
76578:  LDR             R0, [R0]
7657A:  LDR             R1, [R1]
7657C:  STR             R1, [SP,#0x210+var_C]
7657E:  MOV             R1, #0x6D687C; int
76586:  ADDS            R5, R0, R1
76588:  BEQ.W           loc_76708
7658C:  LDR             R3, =(aSSamp - 0x76596); "%s/SAMP" ...
7658E:  ADD             R4, SP, #0x210+path
76590:  STR             R5, [SP,#0x210+var_210]
76592:  ADD             R3, PC; "%s/SAMP"
76594:  MOV             R0, R4; int
76596:  BL              sub_767B0
7659A:  LDR             R3, =(aSSampMenuSetti - 0x765A4); "%s/SAMP/menu_settings.ini" ...
7659C:  ADD             R0, SP, #0x210+filename; int
7659E:  STR             R5, [SP,#0x210+var_210]
765A0:  ADD             R3, PC; "%s/SAMP/menu_settings.ini"
765A2:  BL              sub_767B0
765A6:  MOV             R0, R4; name
765A8:  MOVS            R1, #0; type
765AA:  BLX             access
765AE:  CMP             R0, #0
765B0:  ITTT NE
765B2:  ADDNE.W         R0, SP, #0x210+path; path
765B6:  MOVWNE          R1, #0x1FF; mode
765BA:  BLXNE           mkdir
765BE:  LDR             R1, =(aW - 0x765C6); "w" ...
765C0:  ADD             R0, SP, #0x210+filename; filename
765C2:  ADD             R1, PC; "w"
765C4:  BLX             fopen
765C8:  CMP             R0, #0
765CA:  BEQ.W           loc_766E0
765CE:  MOV             R4, R0
765D0:  LDR             R0, =(dword_1A44FC - 0x765D6)
765D2:  ADD             R0, PC; dword_1A44FC
765D4:  VLDR            S0, [R0]
765D8:  MOV             R0, R4; stream
765DA:  LDR             R1, =(aUiSensitivity3 - 0x765E4); "[ui]\nsensitivity=%.3f\n" ...
765DC:  VCVT.F64.F32    D16, S0
765E0:  ADD             R1, PC; "[ui]\nsensitivity=%.3f\n"
765E2:  VMOV            R2, R3, D16
765E6:  BLX             fprintf
765EA:  LDR             R0, =(dword_1A44F8 - 0x765F0)
765EC:  ADD             R0, PC; dword_1A44F8
765EE:  VLDR            S0, [R0]
765F2:  MOV             R0, R4; stream
765F4:  LDR             R1, =(aDrawDistance1f - 0x765FE); "draw_distance=%.1f\n" ...
765F6:  VCVT.F64.F32    D16, S0
765FA:  ADD             R1, PC; "draw_distance=%.1f\n"
765FC:  VMOV            R2, R3, D16
76600:  BLX             fprintf
76604:  LDR             R0, =(dword_1A4500 - 0x7660C)
76606:  LDR             R1, =(aVoiceXD - 0x7660E); "voice_x=%d\n" ...
76608:  ADD             R0, PC; dword_1A4500
7660A:  ADD             R1, PC; "voice_x=%d\n"
7660C:  LDR             R2, [R0]
7660E:  MOV             R0, R4; stream
76610:  BLX             fprintf
76614:  LDR             R0, =(dword_1A4504 - 0x7661C)
76616:  LDR             R1, =(aVoiceYD - 0x7661E); "voice_y=%d\n" ...
76618:  ADD             R0, PC; dword_1A4504
7661A:  ADD             R1, PC; "voice_y=%d\n"
7661C:  LDR             R2, [R0]
7661E:  MOV             R0, R4; stream
76620:  BLX             fprintf
76624:  LDR             R0, =(dword_1A4510 - 0x7662C)
76626:  LDR             R1, =(aSpeakerListD - 0x7662E); "speaker_list=%d\n" ...
76628:  ADD             R0, PC; dword_1A4510
7662A:  ADD             R1, PC; "speaker_list=%d\n"
7662C:  LDR             R2, [R0]
7662E:  MOV             R0, R4; stream
76630:  BLX             fprintf
76634:  LDR             R0, =(dword_1A4508 - 0x7663C)
76636:  LDR             R1, =(aVoiceWD - 0x7663E); "voice_w=%d\n" ...
76638:  ADD             R0, PC; dword_1A4508
7663A:  ADD             R1, PC; "voice_w=%d\n"
7663C:  LDR             R2, [R0]
7663E:  MOV             R0, R4; stream
76640:  BLX             fprintf
76644:  LDR             R0, =(dword_1A450C - 0x7664C)
76646:  LDR             R1, =(aVoiceHD - 0x7664E); "voice_h=%d\n" ...
76648:  ADD             R0, PC; dword_1A450C
7664A:  ADD             R1, PC; "voice_h=%d\n"
7664C:  LDR             R2, [R0]
7664E:  MOV             R0, R4; stream
76650:  BLX             fprintf
76654:  LDR             R0, =(dword_1A4514 - 0x7665C)
76656:  LDR             R1, =(aNewMenuD - 0x7665E); "new_menu=%d\n" ...
76658:  ADD             R0, PC; dword_1A4514
7665A:  ADD             R1, PC; "new_menu=%d\n"
7665C:  LDR             R2, [R0]
7665E:  MOV             R0, R4; stream
76660:  BLX             fprintf
76664:  LDR             R1, =(aButtoncolS - 0x7666E); "buttoncol=%s\n" ...
76666:  MOV             R0, R4; stream
76668:  LDR             R2, =(unk_1A452C - 0x76670)
7666A:  ADD             R1, PC; "buttoncol=%s\n"
7666C:  ADD             R2, PC; unk_1A452C
7666E:  BLX             fprintf
76672:  LDR             R0, =(dword_1A451C - 0x7667A)
76674:  LDR             R1, =(aPassengerBtnXD - 0x7667C); "passenger_btn_x=%d\n" ...
76676:  ADD             R0, PC; dword_1A451C
76678:  ADD             R1, PC; "passenger_btn_x=%d\n"
7667A:  LDR             R2, [R0]
7667C:  MOV             R0, R4; stream
7667E:  BLX             fprintf
76682:  LDR             R0, =(dword_1A4520 - 0x7668A)
76684:  LDR             R1, =(aPassengerBtnYD - 0x7668C); "passenger_btn_y=%d\n" ...
76686:  ADD             R0, PC; dword_1A4520
76688:  ADD             R1, PC; "passenger_btn_y=%d\n"
7668A:  LDR             R2, [R0]
7668C:  MOV             R0, R4; stream
7668E:  BLX             fprintf
76692:  LDR             R0, =(dword_1A4524 - 0x76698)
76694:  ADD             R0, PC; dword_1A4524
76696:  VLDR            S0, [R0]
7669A:  MOV             R0, R4; stream
7669C:  LDR             R1, =(aFontsize1f - 0x766A6); "fontsize=%.1f\n" ...
7669E:  VCVT.F64.F32    D16, S0
766A2:  ADD             R1, PC; "fontsize=%.1f\n"
766A4:  VMOV            R2, R3, D16
766A8:  BLX             fprintf
766AC:  LDR             R0, =(dword_1A4528 - 0x766B4)
766AE:  LDR             R1, =(aPagesizeD - 0x766B6); "pagesize=%d\n" ...
766B0:  ADD             R0, PC; dword_1A4528
766B2:  ADD             R1, PC; "pagesize=%d\n"
766B4:  LDR             R2, [R0]
766B6:  MOV             R0, R4; stream
766B8:  BLX             fprintf
766BC:  MOV             R0, R4; stream
766BE:  BLX             fflush
766C2:  LDR             R0, [SP,#0x210+var_C]
766C4:  LDR             R1, =(__stack_chk_guard_ptr - 0x766CA)
766C6:  ADD             R1, PC; __stack_chk_guard_ptr
766C8:  LDR             R1, [R1]; __stack_chk_guard
766CA:  LDR             R1, [R1]
766CC:  CMP             R1, R0
766CE:  ITTTT EQ
766D0:  MOVEQ           R0, R4
766D2:  ADDEQ.W         SP, SP, #0x208
766D6:  POPEQ.W         {R4,R5,R7,LR}
766DA:  BEQ.W           sub_10C17C
766DE:  B               loc_76704
766E0:  LDR             R0, [SP,#0x210+var_C]
766E2:  LDR             R1, =(__stack_chk_guard_ptr - 0x766E8)
766E4:  ADD             R1, PC; __stack_chk_guard_ptr
766E6:  LDR             R1, [R1]; __stack_chk_guard
766E8:  LDR             R1, [R1]
766EA:  CMP             R1, R0
766EC:  BNE             loc_76704
766EE:  LDR             R1, =(aSampOrig - 0x766F8); "SAMP_ORIG" ...
766F0:  MOVS            R0, #6
766F2:  LDR             R2, =(aFailedToOpenMe - 0x766FA); "Failed to open menu_settings.ini for wr"... ...
766F4:  ADD             R1, PC; "SAMP_ORIG"
766F6:  ADD             R2, PC; "Failed to open menu_settings.ini for wr"...
766F8:  ADD.W           SP, SP, #0x208
766FC:  POP.W           {R4,R5,R7,LR}
76700:  B.W             sub_10C158
76704:  BLX             __stack_chk_fail
76708:  LDR             R1, =(aSampOrig - 0x76712); "SAMP_ORIG" ...
7670A:  MOVS            R0, #6; prio
7670C:  LDR             R2, =(aFailedToInitia - 0x76714); "Failed to initialize settings. (game st"... ...
7670E:  ADD             R1, PC; "SAMP_ORIG"
76710:  ADD             R2, PC; "Failed to initialize settings. (game st"...
76712:  BLX             __android_log_print
76716:  BLX             j__ZSt9terminatev; std::terminate(void)
