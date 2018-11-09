function LUT(obraz, przekodowanie)


subplot(2,2,1:2);
plot(przekodowanie);
title("Przekodowanie");

subplot(2,2,3);
imshow(obraz);
title('Obraz oryginalny');

subplot(2,2,4); 
imshow(intlut(obraz, przekodowanie)); 
title('Obraz zakodowany');


end

