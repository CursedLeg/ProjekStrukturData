##Ahmad Tuflihun | 3201816084 | Semester 2B

A= [40,30,50,60];
proses = 0;

print(A);

for i in range(len(A)-1,-1,-1):
	swapped = False;
	for j in range(0,i):
		proses= proses + 1;
		if(A[j]>A[j+1]):
			A[j],A[j+1]=A[j+1],A[j];
			swapped = True;
	if(swapped==False):
		break;

print("Proses:",proses);
print(A);
input();