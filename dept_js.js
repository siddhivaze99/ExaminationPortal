

function option(){
    let sel=document.getElementById("department").value;
  // console.log(sel);
  if(sel=="Management"){
    let sel=document.getElementById("course");
    sel.innerHTML = '';
    const option=document.createElement("option");
    const option2=document.createElement("option");
    const textnode=document.createTextNode("MBA");
    const textnode2=document.createTextNode("MCA");
    option.appendChild(textnode);
    option2.appendChild(textnode2);
    document.getElementById("course").appendChild(option);
    document.getElementById("course").appendChild(option2);
  }
  else if (sel=="science"){
    let sel=document.getElementById("course");
    sel.innerHTML = '';
    const option=document.createElement("option");
    const option2=document.createElement("option");
    const textnode=document.createTextNode("Engineering");
    const textnode2=document.createTextNode("BBA");
    option.appendChild(textnode);
    option2.appendChild(textnode2);
    document.getElementById("course").appendChild(option);
    document.getElementById("course").appendChild(option2);
  }
  }
  function option2(){
    let sel =document.getElementById("course").value;
    if(sel=="MBA"){
     let sub2=document.getElementById("sub");
     sub2.innerHTML='';
    const option=document.createElement("option");
    const option2=document.createElement("option");
    const textnode=document.createTextNode("Marketing");
    const textnode2=document.createTextNode("Finance");
    option.appendChild(textnode);
    option2.appendChild(textnode2);
    document.getElementById("sub").appendChild(option);
    document.getElementById("sub").appendChild(option2);
    }
    else if(sel=="MCA"){
      let sub2=document.getElementById("sub");
      sub2.innerHTML='';
     const option=document.createElement("option");
     const option2=document.createElement("option");
     const textnode=document.createTextNode("MCA-management");
     const textnode2=document.createTextNode("MCA-science");
     option.appendChild(textnode);
     option2.appendChild(textnode2);
     document.getElementById("sub").appendChild(option);
     document.getElementById("sub").appendChild(option2);
    }
  }
  
  function option3(){
    let sel=docoment.getElementById("course").value;
    if(sel=="Engineering"){
      let sub3=document.getElementById("sub");
      sub3.innerHTM='';
      const option=document.createElement("option");
      const option2=document.createElement("option");
      const textnode=document.createTextNode("BTech");
      const textnode2=document.createTextNode("MTech");
      option.appendChild(textnode);
      option2.appendChild(textnode2);
      document.getElementById("sub").appendChild(option);
      document.getElementById("sub").appendChild(option2);
  
    }
    else if(sel=="BBA"){
      let sub3=document.getElementById("sub");
      sub3.innerHTML='';
      const option=document.createElement("option");
      const option2=document.createElement("option");
      const textnode=document.createTextNode("BBM");
      const textnode2=document.createTextNode("BMS");
      option.appendChild(textnode);
      option2.appendChild(textnode2);
      document.getElementById("sub").appendChild(option);
      document.getElementById("sub").appendChild(option2);
  
    }
  }
  