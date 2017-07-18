function swapText(){
    var temp=sortList.text
    sortList.text=sortType.text
    sortType.text=temp

}
function togglePopUp(){         //show and hide popUp
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

   var sorted=[];                                 //objects already sorted (index)
   for(var i=0;i<visualModel.model.count;i++){

       for(var index=0;index<visualModel.model.count;index++){
           if(sorted.indexOf(index)==-1){
               var minIndex=index;              //initial value for min which is not sorted (index)
               break;}}

   var min=visualModel.model.get(minIndex)
   for(var j=0;j<visualModel.model.count ;j++){ //finding minimum value in model which is not sorted yet
         if(isbigger(min,visualModel.model.get(j)) && sorted.indexOf(j)==-1){
           min=visualModel.model.get(j)
           minIndex=j}
       }
     sorted.push(minIndex)

   }

                                                       //items are all object visible in the listView
   visualModel.items.remove(0,visualModel.items.count);// empty the delegateModel items
   for(var k=0;k<visualModel.model.count;k++)          //add items in sorted order
       visualModel.items.insert(visualModel.model.get(sorted[k]))
   }

function numberComp(a,b){
    return a.day>b.day

}
function letterComp(a,b){
    return a.name.localeCompare(b.name)==1?true:false

}
