; =========================================================
; Game Engine Function: _ZN12CAudioEngine18ReportDoorMovementEP9CPhysical
; Address            : 0x3BD2C0 - 0x3BD2CE
; =========================================================

3BD2C0:  MOV             R2, R1; CPhysical *
3BD2C2:  MOVW            R1, #0x1F50
3BD2C6:  ADD             R0, R1; this
3BD2C8:  MOVS            R1, #0xA3; int
3BD2CA:  B.W             j_j__ZN18CAEDoorAudioEntity13AddAudioEventEiP9CPhysical; j_CAEDoorAudioEntity::AddAudioEvent(int,CPhysical *)
