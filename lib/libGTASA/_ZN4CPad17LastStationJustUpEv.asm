; =========================================================
; Game Engine Function: _ZN4CPad17LastStationJustUpEv
; Address            : 0x3FB3FE - 0x3FB412
; =========================================================

3FB3FE:  LDRH.W          R0, [R0,#0x110]
3FB402:  CMP             R0, #0
3FB404:  ITT NE
3FB406:  MOVNE           R0, #0
3FB408:  BXNE            LR
3FB40A:  MOVS            R0, #0xA6
3FB40C:  MOVS            R1, #1
3FB40E:  B.W             j_j__ZN15CTouchInterface12IsSwipedLeftENS_9WidgetIDsEi; j_CTouchInterface::IsSwipedLeft(CTouchInterface::WidgetIDs,int)
