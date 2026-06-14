; =========================================================
; Game Engine Function: _Z13Menu_RateGamePv
; Address            : 0x29B544 - 0x29B55C
; =========================================================

29B544:  PUSH            {R7,LR}
29B546:  MOV             R7, SP
29B548:  BLX             j__ZN13CLocalisation10GermanGameEv; CLocalisation::GermanGame(void)
29B54C:  CMP             R0, #0
29B54E:  ITE EQ
29B550:  ADREQ           R0, aComRockstargam; "com.rockstargames.gtasa"
29B552:  ADRNE           R0, aComRockstargam_0; "com.rockstargames.gtasager"
29B554:  POP.W           {R7,LR}
29B558:  B.W             j_j__Z17OS_ServiceRateAppPKc; j_OS_ServiceRateApp(char const*)
