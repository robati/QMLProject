function swapText(){
    var temp=sortList.text
    sortList.text=sortType.text
    sortType.text=temp

}
function togglePopUp(){
    if(sortPopUp.visible)sortPopUp.visible=false
    else sortPopUp.visible=true
}

function sort(sortType){
    if(sortType=="به ترتیب الفبا")
        return generalSort(letterComp)
    else if(sortType=="به ترتیب زمان")
        return generalSort(numberComp)
}

function  generalSort(isbigger){

    var used=[];
   for(var i=0;i<visualModel.model.count;i++){

       for(var index=0;index<visualModel.model.count;index++){
           if(used.indexOf(index)==-1){
               var minIndex=index;
               break;}}
   var min=visualModel.model.get(minIndex)
   for(var j=0;j<visualModel.model.count ;j++){
         if(isbigger(min,visualModel.model.get(j)) && used.indexOf(j)==-1){
           min=visualModel.model.get(j)
           minIndex=j}
       }
     used.push(minIndex)

   }

   visualModel.items.remove(0,visualModel.items.count);
   for(var k=0;k<visualModel.model.count;k++)
       visualModel.items.insert(visualModel.model.get(used[k]))
   }

function numberComp(a,b){
    return a.day>b.day

}
function letterComp(a,b){
    return a.name.localeCompare(b.name)==1?true:false

}
