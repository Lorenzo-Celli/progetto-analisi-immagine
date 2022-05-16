prompt = 'Benvenuto, su quale tipologia di file vuoi operare? [audio,image,video] ';
str = input(prompt, 's');
if str == 'audio'
    prompt='Scrivi il nome dell audio con la sua estensione'
elseif str=='image' 
    prompt='Scrivi il nome dell immagine con la sua estensione'
    str1=input(prompt,"s");
    immagine=imread(str1);
    imshow(immagine)
    prompt='Vuoi filtrare l immagine, oppure procedere con la crittografia?[filtro,critto]'
else str=='video'
    prompt='Scrivi il nome dell video con la sua estensione'
end





stri2 = input(prompt,"s");
if stri2== 'filtro'
    prompt='A quale campo appartiene l immagine?[medico, computer....]'
else stri2=='critto'
    prompt='Ci dispiace, questa funzionalità non è stata ancora implementata'
end



stri3 = input(prompt,"s");
if stri3== 'medico'
prompt=['Per il campo medico ricordiamo che sono molto importanti i bordi delle immagini, quindi' ...
    'si consiglia di non utilizzare filtri che compromettono una visione ottimale']
else stri3=='computer'
    prompt='Ci dispiace, questa funzionalità non è stata ancora implementata'
end