percept= ["A", "B", "C", "D"]
state = ["happy", "sad", "angry", "normal"]
action= ["smile", "cry", "frown", "watch football"]
def GetState(cPercept):
 index=-1
 for p in percept:
  index=index+1
  if p==cPercept:
   return state[index]
def GetAction(cState):
 index=-1
 for s in state:
  index=index+1
  if s==cState:
    return action[index]
def SimpleReflexAgent(cPercept):
 return GetAction(GetState(cPercept))
print ("MENU: ")
print (" 0:A 1:B 2:C 3:D")
print (SimpleReflexAgent(percept[int(input("Input Number :"))]))