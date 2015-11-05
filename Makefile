run: global.o TFQMRmod.o BesselH.o MoM_Code_PEC_TM.o 
	mpif90 -o run global.o TFQMRmod.o BesselH.o MoM_Code_PEC_TM.o -L. -llapack

global.mod: global.o global.f90
	mpif90 -c global.f90

TFQMRmod.mod: TFQMRmod.f90 TFQMRmod.o
	mpif90 -c TFQMRmod.f90
TFQMRmod.o: TFQMRmod.f90
	mpif90 -c TFQMRmod.f90

BesselH.mod: BesselH.o BesselH.f90
	mpif90 -c BesselH.f90

global.o: global.f90
	mpif90 -c global.f90



BesselH.o: BesselH.f90
	mpif90 -c BesselH.f90

MoM_Code_PEC_TM.o: MoM_Code_PEC_TM.f90
	mpif90 -c MoM_Code_PEC_TM.f90

clean:
	rm global.mod besselh.mod matvecmult.mod  global.o BesselH.o TFQMRmod.o MoM_Code_PEC_TM.o run

