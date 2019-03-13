
filename       = 'NACA 0012.dat';
delimiterIn    = ' ';
headerlinesIn  = 1;
format long;

airfoil_struct = importdata(filename,delimiterIn,headerlinesIn);

fields = fieldnames(airfoil_struct);
coord  = char(fields(1));

airfoil_coord = airfoil_struct.(coord);

plot(airfoil_coord(:,1),airfoil_coord(:,2),'.','MarkerSize',20);

axis equal;

hold off