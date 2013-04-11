part of ex2;

fonction2_1(var phrases_alea){
  var liste_phrases = phrases_alea.split(".");
  var phrasePlusLongue = "a";
  for (var i=0; i<liste_phrases.length; i++){
    var nbre_mots = liste_phrases[i].split(" ");
    if (nbre_mots.length > phrasePlusLongue.length){
      phrasePlusLongue=nbre_mots;
    }
  }
  print ('''Parmi le texte suivant : \n\n $phrases_alea \n\n La phrase la plus longue est : \n\n $phrasePlusLongue''');
}

fonction2_2(var phrase){
  
  var liste_mots = phrase.split(" "); //les mots avec apostrophe comme "L'arbre" sont considérés comme un seul mot
  var MotPlusLong="a"; /*pour qu'il ait une longueur de départ qui ne fasse pas concurrence avec les mots de la phrase*/
  for (var i=0; i<liste_mots.length; i++){
    var a = liste_mots[i];
    if (a.length>MotPlusLong.length){
      MotPlusLong=a;
    }
  }
  print ('''Dans la phrase suivante : \n\n $phrase \n\n le mot le plus long est "$MotPlusLong". Il est à noter que les apostrophes, de même que les points et les virgules qui suivent immédiatement les mots sont comptés comme des lettres.''');

}

fonction2_3(var listeElements){
  var ListeAleatoire =[];
  int NbreAlea2(int max) { //J'espère que c'est correct d'utiliser la fonction random, sinon je ne vois comment j'aurais pu programmer quelque chose de random...
    var NbreAlea3 = new Random().nextInt(max);
    return NbreAlea3;
  }
  for(var i=0; i<listeElements.length; i++){
    
    var NbreAlea = NbreAlea2(listeElements.length);
    ListeAleatoire.add(listeElements[NbreAlea]);
  }
  print ("La liste aléatoire de la liste suivante : \n\n $listeElements \n\n est la suivante : \n\n $ListeAleatoire");
}


fonction2_4_encoder(var noms, lettreRecherchee, [var prenoms, var adresses]){ //Il faut que les 3 arguments soient des listes, et qu'elles soient de même longueur.
  var ListeMembre = [];
  for (var i=0; i<noms.length; i++){
    var MembreAjoute = [noms[i], prenoms[i], adresses[i]];
    ListeMembre.add(MembreAjoute);
    print (ListeMembre);
  }
  
  
  var listeAlphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];
  var dictAlphabet = {};
  for (var i =0; i<listeAlphabet.length;i++){ //permet de donner des valeurs aux lettres.
    dictAlphabet[listeAlphabet[0]]=[i];
  }
  
  
  for (var i =0; i<ListeMembre.length; i++){
    for (var j=0; j<ListeMembre.length; j++){
      for (var k=0; k<ListeMembre[i][j];k++){
        if (i==0){
          continue;
        }
        else{
          var a=ListeMembre[i][j];
          var b=ListeMembre[i-1][j];
          if(dictAlphabet[a]<dictAlphabet[b]){
            ListeMembre.add(ListeMembre[i]);
            ListeMembre[i]=ListeMembre[i-1];
            ListeMembre[i-1]=ListeMembre[ListeMembre.length];
            ListeMembre.removeLast();
            
          }
        }
      }  
    }
  }

print (ListeMembre);
}
  

for (var i=0; i<listeMembre.length; i++){
  var lettresSeparees = listeMembre[i].split("");
  if (lettresSeparees[0]==lettreRecherchee){
    print(listeMembre[i]);
  }
}
/*}

fonction2_4_trier(ListeMembre){*/
  //var premier = ListeMembre[0].split("");
  /*ListeMembre.sort(
      (premier[0], ListeMembre[i][0]){
        if (premier[0]==ListeMembre[i][0]){
          return 0;
        }
        else if (premier[0]>ListeMembre[i][0]){
          return 1;
        }
        else{
          return -1;
        }  
  );*/
  //var premierMot
  /*var ListeNoms= new List.fixedLength(ListeMembre.length);
  var listeAlphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];
  var dictAlphabet = {};
  for (var i =0; i<listeAlphabet.length;i++){
    dictAlphabet[listeAlphabet[0]]=[i];
  }
  
  for(var i=0; i<ListeMembre.length; i++){ */
    
    /*
    if(i==0){
      
      ListeNoms[i]=ListeMembre[i][0];
      
      
    }
    else{
    
    ListeNoms[i]=ListeMembre[i][0];
    var present = ListeMembre[i][0];
    var present2 = present.split("");
    //var comparable = [suivants, premier];
    var precedents = ListeMembre[i-1][0];
    var precedents2 = precedents.split("");
    print (ListeNoms);
    ListeNoms.sort(
        (a, b){
          if (a==b){
            return 0;
          }
          else if (a > b){
            return 1;
          }
          else{
            return -1;
          }  
        }
     );
    }*/
    /*if (suivants[0]>premier[0]){
      continue;
    }
    else{
      
    }*/
    




//fonction2_4_chercher(listeMembre, var lettreRecherchee){
  
  
}

fonction2_5(nomsClubs,lieuxClubs,qualitesClub,nomMembreClub1,prenomMembreClub1,adresseMembreClub1,nomMembreClub2,prenomMembreClub2,adresseMembreClub2,nomMembreClub3,prenomMembreClub3,adresseMembreClub3){
  var clubs = new List.fixedLength(3); //Ce programme permet de considérer exactement 3 clubs. Cependant, il est possible d'ajouter des membres pour n'importe quel club. Il faut seulement s'assurer que pour chaque membre ajouté, il y a bel et bien un nom, un prénom et une adresse email.
  var membreClub1=[];
  var membreClub2=[];
  var membreClub3=[];
  var club1={};
  var club2={};
  var club3={};
  clubs[0]=club1;
  clubs[1]=club2;
  clubs[2]=club3;
  
  for (var i=0; i<nomMembreClub1.length; i++){ //pour créer les listes de membres
    membreClub1.add([nomMembreClub1[i], prenomMembreClub1[i],adresseMembreClub1[i]]);
  }
    
  for (var i=0; i<nomMembreClub2.length; i++){
    membreClub2.add([nomMembreClub2[i], prenomMembreClub2[i],adresseMembreClub2[i]]);
  }
  for (var i=0; i<nomMembreClub3.length; i++){
    membreClub3.add([nomMembreClub3[i], prenomMembreClub3[i],adresseMembreClub3[i]]);
  }
  var membresTotaux = [membreClub1,membreClub2,membreClub3];
  
  
  

    club1["Nom"]=nomsClubs[0];
    club1["Lieu"]=lieuxClubs[0];
    club1["Membres"]=membresTotaux[0];
    
    club2["Nom"]=nomsClubs[1];
    club2["Lieu"]=lieuxClubs[1];
    club2["Membres"]=membresTotaux[1];
    
    club3["Nom"]=nomsClubs[2];
    club3["Lieu"]=lieuxClubs[2];
    club3["Membres"]=membresTotaux[2];
    

  print (clubs);
}





