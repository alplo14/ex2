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


fonction2_4_encoder(var noms, [var prenoms, var adresses]){ //Il faut que les 3 arguments soient des listes, et qu'elles soient de même longueur.
  var ListeMembre = [];
  for (var i=0; i<noms.length; i++){
    var MembreAjoute = [noms[i], prenoms[i], adresses[i]];
    ListeMembre.add(MembreAjoute);
  }
}

fonction2_4_trier(ListeMembre){
  var premier = ListeMembre[0].split("");
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
  for(var i=1; i<ListeMembre.length; i++){ //On commence à 1 pour pouvoir comparer deux items ensemble.
    var suivants = ListeMembre[i].split("");
    var comparable = [suivants, premier];
    comparable.sort(
        (a, b){
          if (a==b){
            return 0;
          }
          else if (a>b){
            return 1;
          }
          else{
            return -1;
          }  
    );
    
    /*if (suivants[0]>premier[0]){
      continue;
    }
    else{
      
    }*/
    
  }
  print (ListeMembre);
}



fonction2_5(nomsClubs,lieuxClubs,qualitesClub,nomMembreClub1,prenomMembreClub1,adresseMembreClub1,nomMembreClub2,prenomMembreClub2,adresseMembreClub2,nomMembreClub3,prenomMembreClub3,adresseMembreClub3){
  
}
