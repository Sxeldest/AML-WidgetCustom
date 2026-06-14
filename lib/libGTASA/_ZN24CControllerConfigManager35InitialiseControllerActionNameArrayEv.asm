; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager35InitialiseControllerActionNameArrayEv
; Address            : 0x3E75AC - 0x3E7AEC
; =========================================================

3E75AC:  PUSH            {R4-R7,LR}
3E75AE:  ADD             R7, SP, #0xC
3E75B0:  PUSH.W          {R8,R9,R11}
3E75B4:  SUB             SP, SP, #0x50
3E75B6:  MOV             R5, R0
3E75B8:  LDR.W           R0, =(aPedLookbehind - 0x3E75C2); "PED_LOOKBEHIND"
3E75BC:  MOV             R9, SP
3E75BE:  ADD             R0, PC; "PED_LOOKBEHIND"
3E75C0:  MOV             R1, R9; unsigned __int16 *
3E75C2:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E75C6:  ADDW            R0, R5, #0x46C; this
3E75CA:  MOV             R1, R9; unsigned __int16 *
3E75CC:  MOVS            R2, #word_28; unsigned __int16 *
3E75CE:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E75D2:  LDR.W           R0, =(aPedCycleWeapon - 0x3E75DC); "PED_CYCLE_WEAPON_LEFT"
3E75D6:  MOV             R1, R9; unsigned __int16 *
3E75D8:  ADD             R0, PC; "PED_CYCLE_WEAPON_LEFT"
3E75DA:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E75DE:  ADD.W           R0, R5, #0xFC; this
3E75E2:  MOV             R1, R9; unsigned __int16 *
3E75E4:  MOVS            R2, #word_28; unsigned __int16 *
3E75E6:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E75EA:  LDR.W           R0, =(aPedCycleWeapon_0 - 0x3E75F4); "PED_CYCLE_WEAPON_RIGHT"
3E75EE:  MOV             R1, R9; unsigned __int16 *
3E75F0:  ADD             R0, PC; "PED_CYCLE_WEAPON_RIGHT"
3E75F2:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E75F6:  ADD.W           R0, R5, #0xAC; this
3E75FA:  MOV             R1, R9; unsigned __int16 *
3E75FC:  MOVS            R2, #word_28; unsigned __int16 *
3E75FE:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7602:  LDR.W           R8, =(aPedLockTarget - 0x3E760C); "PED_LOCK_TARGET"
3E7606:  MOV             R1, R9; unsigned __int16 *
3E7608:  ADD             R8, PC; "PED_LOCK_TARGET"
3E760A:  MOV             R0, R8; char *
3E760C:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E7610:  ADDW            R6, R5, #0xE1C
3E7614:  MOV             R1, R9; unsigned __int16 *
3E7616:  MOVS            R2, #word_28; unsigned __int16 *
3E7618:  MOV             R0, R6; this
3E761A:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E761E:  LDR.W           R0, =(aPedJumping - 0x3E7628); "PED_JUMPING"
3E7622:  MOV             R1, R9; unsigned __int16 *
3E7624:  ADD             R0, PC; "PED_JUMPING"
3E7626:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E762A:  ADD.W           R0, R5, #0x3CC; this
3E762E:  MOV             R1, R9; unsigned __int16 *
3E7630:  MOVS            R2, #word_28; unsigned __int16 *
3E7632:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7636:  LDR.W           R0, =(aPedSprint - 0x3E7640); "PED_SPRINT"
3E763A:  MOV             R1, R9; unsigned __int16 *
3E763C:  ADD             R0, PC; "PED_SPRINT"
3E763E:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E7642:  ADDW            R0, R5, #0x41C; this
3E7646:  MOV             R1, R9; unsigned __int16 *
3E7648:  MOVS            R2, #word_28; unsigned __int16 *
3E764A:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E764E:  LDR.W           R0, =(aSneakAbout - 0x3E7658); "SNEAK_ABOUT"
3E7652:  MOV             R1, R9; unsigned __int16 *
3E7654:  ADD             R0, PC; "SNEAK_ABOUT"
3E7656:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E765A:  ADDW            R0, R5, #0x55C; this
3E765E:  MOV             R1, R9; unsigned __int16 *
3E7660:  MOVS            R2, #word_28; unsigned __int16 *
3E7662:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7666:  LDR.W           R0, =(aPedCycleTarget - 0x3E7670); "PED_CYCLE_TARGET_LEFT"
3E766A:  MOV             R1, R9; unsigned __int16 *
3E766C:  ADD             R0, PC; "PED_CYCLE_TARGET_LEFT"
3E766E:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E7672:  ADDW            R0, R5, #0xD2C; this
3E7676:  MOV             R1, R9; unsigned __int16 *
3E7678:  MOVS            R2, #word_28; unsigned __int16 *
3E767A:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E767E:  LDR.W           R0, =(aPedCycleTarget_0 - 0x3E7688); "PED_CYCLE_TARGET_RIGHT"
3E7682:  MOV             R1, R9; unsigned __int16 *
3E7684:  ADD             R0, PC; "PED_CYCLE_TARGET_RIGHT"
3E7686:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E768A:  ADDW            R0, R5, #0xD7C; this
3E768E:  MOV             R1, R9; unsigned __int16 *
3E7690:  MOVS            R2, #word_28; unsigned __int16 *
3E7692:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7696:  MOV             R0, R8; char *
3E7698:  MOV             R1, R9; unsigned __int16 *
3E769A:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E769E:  MOV             R0, R6; this
3E76A0:  MOV             R1, R9; unsigned __int16 *
3E76A2:  MOVS            R2, #word_28; unsigned __int16 *
3E76A4:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E76A8:  LDR.W           R0, =(aPedCenterCamer - 0x3E76B2); "PED_CENTER_CAMERA_BEHIND_PLAYER"
3E76AC:  MOV             R1, R9; unsigned __int16 *
3E76AE:  ADD             R0, PC; "PED_CENTER_CAMERA_BEHIND_PLAYER"
3E76B0:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E76B4:  ADDW            R0, R5, #0xDCC; this
3E76B8:  MOV             R1, R9; unsigned __int16 *
3E76BA:  MOVS            R2, #word_28; unsigned __int16 *
3E76BC:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E76C0:  LDR.W           R0, =(aVehicleLookbeh - 0x3E76CA); "VEHICLE_LOOKBEHIND"
3E76C4:  MOV             R1, R9; unsigned __int16 *
3E76C6:  ADD             R0, PC; "VEHICLE_LOOKBEHIND"
3E76C8:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E76CC:  ADDW            R0, R5, #0xB4C; this
3E76D0:  MOV             R1, R9; unsigned __int16 *
3E76D2:  MOVS            R2, #word_28; unsigned __int16 *
3E76D4:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E76D8:  LDR.W           R0, =(aPedDuck - 0x3E76E2); "PED_DUCK"
3E76DC:  MOV             R1, R9; unsigned __int16 *
3E76DE:  ADD             R0, PC; "PED_DUCK"
3E76E0:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E76E4:  ADDW            R0, R5, #0x4BC; this
3E76E8:  MOV             R1, R9; unsigned __int16 *
3E76EA:  MOVS            R2, #word_28; unsigned __int16 *
3E76EC:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E76F0:  LDR.W           R0, =(aPedAnswerPhone - 0x3E76FA); "PED_ANSWER_PHONE"
3E76F4:  MOV             R1, R9; unsigned __int16 *
3E76F6:  ADD             R0, PC; "PED_ANSWER_PHONE"
3E76F8:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E76FC:  ADDW            R0, R5, #0x50C; this
3E7700:  MOV             R1, R9; unsigned __int16 *
3E7702:  MOVS            R2, #word_28; unsigned __int16 *
3E7704:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7708:  LDR.W           R0, =(aVehicleSteerle - 0x3E7712); "VEHICLE_STEERLEFT"
3E770C:  MOV             R1, R9; unsigned __int16 *
3E770E:  ADD             R0, PC; "VEHICLE_STEERLEFT"
3E7710:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E7714:  ADDW            R0, R5, #0x64C; this
3E7718:  MOV             R1, R9; unsigned __int16 *
3E771A:  MOVS            R2, #word_28; unsigned __int16 *
3E771C:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7720:  LDR.W           R0, =(aVehicleSteerri - 0x3E772A); "VEHICLE_STEERRIGHT"
3E7724:  MOV             R1, R9; unsigned __int16 *
3E7726:  ADD             R0, PC; "VEHICLE_STEERRIGHT"
3E7728:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E772C:  ADDW            R0, R5, #0x69C; this
3E7730:  MOV             R1, R9; unsigned __int16 *
3E7732:  MOVS            R2, #word_28; unsigned __int16 *
3E7734:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7738:  LDR.W           R0, =(aVehicleSteerup - 0x3E7742); "VEHICLE_STEERUP"
3E773C:  MOV             R1, R9; unsigned __int16 *
3E773E:  ADD             R0, PC; "VEHICLE_STEERUP"
3E7740:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E7744:  ADDW            R0, R5, #0x6EC; this
3E7748:  MOV             R1, R9; unsigned __int16 *
3E774A:  MOVS            R2, #word_28; unsigned __int16 *
3E774C:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7750:  LDR.W           R0, =(aVehicleSteerdo - 0x3E775A); "VEHICLE_STEERDOWN"
3E7754:  MOV             R1, R9; unsigned __int16 *
3E7756:  ADD             R0, PC; "VEHICLE_STEERDOWN"
3E7758:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E775C:  ADDW            R0, R5, #0x73C; this
3E7760:  MOV             R1, R9; unsigned __int16 *
3E7762:  MOVS            R2, #word_28; unsigned __int16 *
3E7764:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7768:  LDR.W           R0, =(aVehicleLooklef - 0x3E7772); "VEHICLE_LOOKLEFT"
3E776C:  MOV             R1, R9; unsigned __int16 *
3E776E:  ADD             R0, PC; "VEHICLE_LOOKLEFT"
3E7770:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E7774:  ADDW            R0, R5, #0xAAC; this
3E7778:  MOV             R1, R9; unsigned __int16 *
3E777A:  MOVS            R2, #word_28; unsigned __int16 *
3E777C:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7780:  LDR.W           R0, =(aVehicleLookrig - 0x3E778A); "VEHICLE_LOOKRIGHT"
3E7784:  MOV             R1, R9; unsigned __int16 *
3E7786:  ADD             R0, PC; "VEHICLE_LOOKRIGHT"
3E7788:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E778C:  ADDW            R0, R5, #0xAFC; this
3E7790:  MOV             R1, R9; unsigned __int16 *
3E7792:  MOVS            R2, #word_28; unsigned __int16 *
3E7794:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7798:  LDR             R0, =(aVehicleMouselo - 0x3E77A0); "VEHICLE_MOUSELOOK"
3E779A:  MOV             R1, R9; unsigned __int16 *
3E779C:  ADD             R0, PC; "VEHICLE_MOUSELOOK"
3E779E:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E77A2:  ADDW            R0, R5, #0xB9C; this
3E77A6:  MOV             R1, R9; unsigned __int16 *
3E77A8:  MOVS            R2, #word_28; unsigned __int16 *
3E77AA:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E77AE:  LDR             R0, =(aVehicleHorn - 0x3E77B6); "VEHICLE_HORN"
3E77B0:  MOV             R1, R9; unsigned __int16 *
3E77B2:  ADD             R0, PC; "VEHICLE_HORN"
3E77B4:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E77B8:  ADDW            R0, R5, #0x91C; this
3E77BC:  MOV             R1, R9; unsigned __int16 *
3E77BE:  MOVS            R2, #word_28; unsigned __int16 *
3E77C0:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E77C4:  LDR             R0, =(aVehicleHandbra - 0x3E77CC); "VEHICLE_HANDBRAKE"
3E77C6:  MOV             R1, R9; unsigned __int16 *
3E77C8:  ADD             R0, PC; "VEHICLE_HANDBRAKE"
3E77CA:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E77CE:  ADDW            R0, R5, #0x9BC; this
3E77D2:  MOV             R1, R9; unsigned __int16 *
3E77D4:  MOVS            R2, #word_28; unsigned __int16 *
3E77D6:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E77DA:  LDR             R0, =(aVehicleAcceler - 0x3E77E2); "VEHICLE_ACCELERATE"
3E77DC:  MOV             R1, R9; unsigned __int16 *
3E77DE:  ADD             R0, PC; "VEHICLE_ACCELERATE"
3E77E0:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E77E4:  ADDW            R0, R5, #0x78C; this
3E77E8:  MOV             R1, R9; unsigned __int16 *
3E77EA:  MOVS            R2, #word_28; unsigned __int16 *
3E77EC:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E77F0:  LDR             R0, =(aVehicleBrake - 0x3E77F8); "VEHICLE_BRAKE"
3E77F2:  MOV             R1, R9; unsigned __int16 *
3E77F4:  ADD             R0, PC; "VEHICLE_BRAKE"
3E77F6:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E77FA:  ADDW            R0, R5, #0x7DC; this
3E77FE:  MOV             R1, R9; unsigned __int16 *
3E7800:  MOVS            R2, #word_28; unsigned __int16 *
3E7802:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7806:  LDR             R0, =(aVehicleRadioSt - 0x3E780E); "VEHICLE_RADIO_STATION_UP"
3E7808:  MOV             R1, R9; unsigned __int16 *
3E780A:  ADD             R0, PC; "VEHICLE_RADIO_STATION_UP"
3E780C:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E7810:  ADDW            R0, R5, #0x82C; this
3E7814:  MOV             R1, R9; unsigned __int16 *
3E7816:  MOVS            R2, #word_28; unsigned __int16 *
3E7818:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E781C:  LDR             R0, =(aVehicleRadioSt_0 - 0x3E7824); "VEHICLE_RADIO_STATION_DOWN"
3E781E:  MOV             R1, R9; unsigned __int16 *
3E7820:  ADD             R0, PC; "VEHICLE_RADIO_STATION_DOWN"
3E7822:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E7826:  ADDW            R0, R5, #0x87C; this
3E782A:  MOV             R1, R9; unsigned __int16 *
3E782C:  MOVS            R2, #word_28; unsigned __int16 *
3E782E:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7832:  LDR             R0, =(aToggleSubmissi - 0x3E783A); "TOGGLE_SUBMISSIONS"
3E7834:  MOV             R1, R9; unsigned __int16 *
3E7836:  ADD             R0, PC; "TOGGLE_SUBMISSIONS"
3E7838:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E783C:  ADDW            R0, R5, #0x96C; this
3E7840:  MOV             R1, R9; unsigned __int16 *
3E7842:  MOVS            R2, #word_28; unsigned __int16 *
3E7844:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7848:  LDR             R0, =(aPedSniperZoomI - 0x3E7850); "PED_SNIPER_ZOOM_IN"
3E784A:  MOV             R1, R9; unsigned __int16 *
3E784C:  ADD             R0, PC; "PED_SNIPER_ZOOM_IN"
3E784E:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E7852:  ADD.W           R0, R5, #0x28C; this
3E7856:  MOV             R1, R9; unsigned __int16 *
3E7858:  MOVS            R2, #word_28; unsigned __int16 *
3E785A:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E785E:  LDR             R0, =(aPedSniperZoomO - 0x3E7866); "PED_SNIPER_ZOOM_OUT"
3E7860:  MOV             R1, R9; unsigned __int16 *
3E7862:  ADD             R0, PC; "PED_SNIPER_ZOOM_OUT"
3E7864:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E7868:  ADD.W           R0, R5, #0x2DC; this
3E786C:  MOV             R1, R9; unsigned __int16 *
3E786E:  MOVS            R2, #word_28; unsigned __int16 *
3E7870:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7874:  LDR             R0, =(aPed1rstPersonL - 0x3E787C); "PED_1RST_PERSON_LOOK_LEFT"
3E7876:  MOV             R1, R9; unsigned __int16 *
3E7878:  ADD             R0, PC; "PED_1RST_PERSON_LOOK_LEFT"
3E787A:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E787E:  ADDW            R0, R5, #0xA0C; this
3E7882:  MOV             R1, R9; unsigned __int16 *
3E7884:  MOVS            R2, #word_28; unsigned __int16 *
3E7886:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E788A:  LDR             R0, =(aPed1rstPersonL_0 - 0x3E7892); "PED_1RST_PERSON_LOOK_RIGHT"
3E788C:  MOV             R1, R9; unsigned __int16 *
3E788E:  ADD             R0, PC; "PED_1RST_PERSON_LOOK_RIGHT"
3E7890:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E7894:  ADDW            R0, R5, #0xA5C; this
3E7898:  MOV             R1, R9; unsigned __int16 *
3E789A:  MOVS            R2, #word_28; unsigned __int16 *
3E789C:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E78A0:  LDR             R0, =(aPed1rstPersonL_1 - 0x3E78A8); "PED_1RST_PERSON_LOOK_UP"
3E78A2:  MOV             R1, R9; unsigned __int16 *
3E78A4:  ADD             R0, PC; "PED_1RST_PERSON_LOOK_UP"
3E78A6:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E78AA:  ADDW            R0, R5, #0xFFC; this
3E78AE:  MOV             R1, R9; unsigned __int16 *
3E78B0:  MOVS            R2, #word_28; unsigned __int16 *
3E78B2:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E78B6:  LDR             R0, =(aPed1rstPersonL_2 - 0x3E78BE); "PED_1RST_PERSON_LOOK_DOWN"
3E78B8:  MOV             R1, R9; unsigned __int16 *
3E78BA:  ADD             R0, PC; "PED_1RST_PERSON_LOOK_DOWN"
3E78BC:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E78C0:  MOVW            R0, #0x104C
3E78C4:  MOV             R1, R9; unsigned __int16 *
3E78C6:  ADD             R0, R5; this
3E78C8:  MOVS            R2, #word_28; unsigned __int16 *
3E78CA:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E78CE:  LDR             R0, =(aShowMousePoint - 0x3E78D6); "SHOW_MOUSE_POINTER_TOGGLE"
3E78D0:  MOV             R1, R9; unsigned __int16 *
3E78D2:  ADD             R0, PC; "SHOW_MOUSE_POINTER_TOGGLE"
3E78D4:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E78D8:  MOVW            R0, #0x11DC
3E78DC:  MOV             R1, R9; unsigned __int16 *
3E78DE:  ADD             R0, R5; this
3E78E0:  MOVS            R2, #word_28; unsigned __int16 *
3E78E2:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E78E6:  LDR             R0, =(aCameraChangeVi - 0x3E78EE); "CAMERA_CHANGE_VIEW_ALL_SITUATIONS"
3E78E8:  MOV             R1, R9; unsigned __int16 *
3E78EA:  ADD             R0, PC; "CAMERA_CHANGE_VIEW_ALL_SITUATIONS"
3E78EC:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E78F0:  ADD.W           R0, R5, #0x37C; this
3E78F4:  MOV             R1, R9; unsigned __int16 *
3E78F6:  MOVS            R2, #word_28; unsigned __int16 *
3E78F8:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E78FC:  LDR             R0, =(aPedFireweapon - 0x3E7904); "PED_FIREWEAPON"
3E78FE:  MOV             R1, R9; unsigned __int16 *
3E7900:  ADD             R0, PC; "PED_FIREWEAPON"
3E7902:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E7906:  ADD.W           R0, R5, #0xC; this
3E790A:  MOV             R1, R9; unsigned __int16 *
3E790C:  MOVS            R2, #word_28; unsigned __int16 *
3E790E:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7912:  LDR             R0, =(aPedFireweaponA - 0x3E791A); "PED_FIREWEAPON_ALT"
3E7914:  MOV             R1, R9; unsigned __int16 *
3E7916:  ADD             R0, PC; "PED_FIREWEAPON_ALT"
3E7918:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E791C:  ADD.W           R0, R5, #0x5C ; '\'; this
3E7920:  MOV             R1, R9; unsigned __int16 *
3E7922:  MOVS            R2, #word_28; unsigned __int16 *
3E7924:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7928:  LDR             R0, =(aVehicleFirewea - 0x3E7930); "VEHICLE_FIREWEAPON"
3E792A:  MOV             R1, R9; unsigned __int16 *
3E792C:  ADD             R0, PC; "VEHICLE_FIREWEAPON"
3E792E:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E7932:  ADDW            R0, R5, #0x5AC; this
3E7936:  MOV             R1, R9; unsigned __int16 *
3E7938:  MOVS            R2, #word_28; unsigned __int16 *
3E793A:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E793E:  LDR             R0, =(aVehicleFirewea_0 - 0x3E7946); "VEHICLE_FIREWEAPON_ALT"
3E7940:  MOV             R1, R9; unsigned __int16 *
3E7942:  ADD             R0, PC; "VEHICLE_FIREWEAPON_ALT"
3E7944:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E7948:  ADDW            R0, R5, #0x5FC; this
3E794C:  MOV             R1, R9; unsigned __int16 *
3E794E:  MOVS            R2, #word_28; unsigned __int16 *
3E7950:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7954:  LDR             R0, =(aVehicleEnterEx - 0x3E795C); "VEHICLE_ENTER_EXIT"
3E7956:  MOV             R1, R9; unsigned __int16 *
3E7958:  ADD             R0, PC; "VEHICLE_ENTER_EXIT"
3E795A:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E795E:  ADD.W           R0, R5, #0x32C; this
3E7962:  MOV             R1, R9; unsigned __int16 *
3E7964:  MOVS            R2, #word_28; unsigned __int16 *
3E7966:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E796A:  LDR             R0, =(aConversationNo - 0x3E7972); "CONVERSATION_NO"
3E796C:  MOV             R1, R9; unsigned __int16 *
3E796E:  ADD             R0, PC; "CONVERSATION_NO"
3E7970:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E7974:  ADDW            R0, R5, #0xF0C; this
3E7978:  MOV             R1, R9; unsigned __int16 *
3E797A:  MOVS            R2, #word_28; unsigned __int16 *
3E797C:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7980:  LDR             R0, =(aConversationYe - 0x3E7988); "CONVERSATION_YES"
3E7982:  MOV             R1, R9; unsigned __int16 *
3E7984:  ADD             R0, PC; "CONVERSATION_YES"
3E7986:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E798A:  ADDW            R0, R5, #0xEBC; this
3E798E:  MOV             R1, R9; unsigned __int16 *
3E7990:  MOVS            R2, #word_28; unsigned __int16 *
3E7992:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7996:  LDR             R0, =(aGroupControlFw - 0x3E799E); "GROUP_CONTROL_FWD"
3E7998:  MOV             R1, R9; unsigned __int16 *
3E799A:  ADD             R0, PC; "GROUP_CONTROL_FWD"
3E799C:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E79A0:  ADDW            R0, R5, #0xF5C; this
3E79A4:  MOV             R1, R9; unsigned __int16 *
3E79A6:  MOVS            R2, #word_28; unsigned __int16 *
3E79A8:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E79AC:  LDR             R0, =(aGroupControlBw - 0x3E79B4); "GROUP_CONTROL_BWD"
3E79AE:  MOV             R1, R9; unsigned __int16 *
3E79B0:  ADD             R0, PC; "GROUP_CONTROL_BWD"
3E79B2:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E79B6:  ADDW            R0, R5, #0xFAC; this
3E79BA:  MOV             R1, R9; unsigned __int16 *
3E79BC:  MOVS            R2, #word_28; unsigned __int16 *
3E79BE:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E79C2:  ADR             R0, aGoLeft; "GO_LEFT"
3E79C4:  MOV             R1, R9; unsigned __int16 *
3E79C6:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E79CA:  ADD.W           R0, R5, #0x1EC; this
3E79CE:  MOV             R1, R9; unsigned __int16 *
3E79D0:  MOVS            R2, #word_28; unsigned __int16 *
3E79D2:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E79D6:  LDR             R0, =(aGoRight - 0x3E79DE); "GO_RIGHT"
3E79D8:  MOV             R1, R9; unsigned __int16 *
3E79DA:  ADD             R0, PC; "GO_RIGHT"
3E79DC:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E79E0:  ADD.W           R0, R5, #0x23C; this
3E79E4:  MOV             R1, R9; unsigned __int16 *
3E79E6:  MOVS            R2, #word_28; unsigned __int16 *
3E79E8:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E79EC:  LDR             R0, =(aGoForward - 0x3E79F4); "GO_FORWARD"
3E79EE:  MOV             R1, R9; unsigned __int16 *
3E79F0:  ADD             R0, PC; "GO_FORWARD"
3E79F2:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E79F6:  ADD.W           R0, R5, #0x14C; this
3E79FA:  MOV             R1, R9; unsigned __int16 *
3E79FC:  MOVS            R2, #word_28; unsigned __int16 *
3E79FE:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7A02:  ADR             R0, aGoBack; "GO_BACK"
3E7A04:  MOV             R1, R9; unsigned __int16 *
3E7A06:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E7A0A:  ADD.W           R0, R5, #0x19C; this
3E7A0E:  MOV             R1, R9; unsigned __int16 *
3E7A10:  MOVS            R2, #word_28; unsigned __int16 *
3E7A12:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7A16:  ADR             R0, aVehicleTurretl; "VEHICLE_TURRETLEFT"
3E7A18:  MOV             R1, R9; unsigned __int16 *
3E7A1A:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E7A1E:  ADDW            R0, R5, #0xBEC; this
3E7A22:  MOV             R1, R9; unsigned __int16 *
3E7A24:  MOVS            R2, #word_28; unsigned __int16 *
3E7A26:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7A2A:  ADR             R0, aVehicleTurretr; "VEHICLE_TURRETRIGHT"
3E7A2C:  MOV             R1, R9; unsigned __int16 *
3E7A2E:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E7A32:  ADDW            R0, R5, #0xC3C; this
3E7A36:  MOV             R1, R9; unsigned __int16 *
3E7A38:  MOVS            R2, #word_28; unsigned __int16 *
3E7A3A:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7A3E:  ADR             R0, aVehicleTurretu; "VEHICLE_TURRETUP"
3E7A40:  MOV             R1, R9; unsigned __int16 *
3E7A42:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E7A46:  ADDW            R0, R5, #0xC8C; this
3E7A4A:  MOV             R1, R9; unsigned __int16 *
3E7A4C:  MOVS            R2, #word_28; unsigned __int16 *
3E7A4E:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7A52:  ADR             R0, aVehicleTurretd; "VEHICLE_TURRETDOWN"
3E7A54:  MOV             R1, R9; unsigned __int16 *
3E7A56:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E7A5A:  ADDW            R0, R5, #0xCDC; this
3E7A5E:  MOV             R1, R9; unsigned __int16 *
3E7A60:  MOVS            R2, #word_28; unsigned __int16 *
3E7A62:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7A66:  ADR             R0, aNetworkTalk; "NETWORK_TALK"
3E7A68:  MOV             R1, R9; unsigned __int16 *
3E7A6A:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E7A6E:  ADDW            R0, R5, #0xE6C; this
3E7A72:  MOV             R1, R9; unsigned __int16 *
3E7A74:  MOVS            R2, #word_28; unsigned __int16 *
3E7A76:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7A7A:  ADR             R0, aToggleDpad; "TOGGLE_DPAD"
3E7A7C:  MOV             R1, R9; unsigned __int16 *
3E7A7E:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E7A82:  MOVW            R0, #0x10EC
3E7A86:  MOV             R1, R9; unsigned __int16 *
3E7A88:  ADD             R0, R5; this
3E7A8A:  MOVS            R2, #word_28; unsigned __int16 *
3E7A8C:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7A90:  ADR             R0, aSwitchDebugCam; "SWITCH_DEBUG_CAM_ON"
3E7A92:  MOV             R1, R9; unsigned __int16 *
3E7A94:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E7A98:  MOVW            R0, #0x113C
3E7A9C:  MOV             R1, R9; unsigned __int16 *
3E7A9E:  ADD             R0, R5; this
3E7AA0:  MOVS            R2, #word_28; unsigned __int16 *
3E7AA2:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7AA6:  ADR             R0, aTakeScreenShot; "TAKE_SCREEN_SHOT"
3E7AA8:  MOV             R1, R9; unsigned __int16 *
3E7AAA:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E7AAE:  MOVW            R0, #0x118C
3E7AB2:  MOV             R1, R9; unsigned __int16 *
3E7AB4:  ADD             R0, R5; this
3E7AB6:  MOVS            R2, #word_28; unsigned __int16 *
3E7AB8:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7ABC:  LDR             R4, =(off_6679D0 - 0x3E7ACA); "widget_camera" ...
3E7ABE:  MOVW            R0, #0x127C
3E7AC2:  ADD             R5, R0
3E7AC4:  MOVS            R6, #0
3E7AC6:  ADD             R4, PC; off_6679D0
3E7AC8:  LDR.W           R0, [R4,R6,LSL#2]; char *
3E7ACC:  MOV             R1, R9; unsigned __int16 *
3E7ACE:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3E7AD2:  MOV             R0, R5; this
3E7AD4:  MOV             R1, R9; unsigned __int16 *
3E7AD6:  MOVS            R2, #word_28; unsigned __int16 *
3E7AD8:  BLX             j__ZN9CMessages13GxtStringCopyEPtS0_t; CMessages::GxtStringCopy(ushort *,ushort *,ushort)
3E7ADC:  ADDS            R6, #1
3E7ADE:  ADDS            R5, #0x50 ; 'P'
3E7AE0:  CMP             R6, #0x7B ; '{'
3E7AE2:  BNE             loc_3E7AC8
3E7AE4:  ADD             SP, SP, #0x50 ; 'P'
3E7AE6:  POP.W           {R8,R9,R11}
3E7AEA:  POP             {R4-R7,PC}
