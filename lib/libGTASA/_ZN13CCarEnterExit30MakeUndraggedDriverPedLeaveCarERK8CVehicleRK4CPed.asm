; =========================================================
; Game Engine Function: _ZN13CCarEnterExit30MakeUndraggedDriverPedLeaveCarERK8CVehicleRK4CPed
; Address            : 0x50906E - 0x50909E
; =========================================================

50906E:  PUSH            {R4,R5,R7,LR}
509070:  ADD             R7, SP, #8
509072:  SUB             SP, SP, #0x20
509074:  ADD             R4, SP, #0x28+var_24
509076:  MOV             R2, R1; CPed *
509078:  MOV             R1, R0; CVehicle *
50907A:  MOVS            R3, #1; bool
50907C:  MOV             R0, R4; this
50907E:  LDR.W           R5, [R1,#0x464]
509082:  BLX             j__ZN19CEventDraggedOutCarC2EPK8CVehiclePK4CPedb; CEventDraggedOutCar::CEventDraggedOutCar(CVehicle const*,CPed const*,bool)
509086:  LDR.W           R0, [R5,#0x440]
50908A:  MOV             R1, R4; CEvent *
50908C:  MOVS            R2, #0; bool
50908E:  ADDS            R0, #0x68 ; 'h'; this
509090:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
509094:  MOV             R0, R4; this
509096:  BLX             j__ZN19CEventDraggedOutCarD2Ev; CEventDraggedOutCar::~CEventDraggedOutCar()
50909A:  ADD             SP, SP, #0x20 ; ' '
50909C:  POP             {R4,R5,R7,PC}
