%% Name : C D Aluthge
%% Reg No : ENG/15/111
%% Eight Queen Problem
Ci = [1,1,1,1,1,1,1,1;0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0];
% % Ci is the initial placement of the 8 Queens. 
% % They are placed on the top row.
C = Ci;
z = 0;
S = 1;
C1 = zeros(8);
while (S == 1)
    for n = 1 : 8
        m = find(C(:,n),1);
        ru = m - 1;
        rd = 8 - m;
        h1 = 0;
        for b1 = 1 : 8
            a1 = find(C(:,b1),1);
            for d1 = b1 + 1 : 8
                c1 = find(C(:,d1),1);
                x1 = d1 - b1;
                y11 = c1 - a1;
                y21 = a1 - c1;
                if a1 == c1
                    h1 = h1 + 1;
                else if x1 == y11
                        h1 = h1 + 1;
                    else if x1 == y21
                            h1 = h1 + 1;
                        end
                    end
                end
            end
        end
        A(m,n) = h1;
        C(m,n) = 0;
        if ru > 0
            for l = 1 : ru
                h2 = 0;
                C(l,n) = 1;
                for b2 = 1 : 8
                    a2 = find(C(:,b2),1);
                    for d2 = b2 + 1 : 8
                        c2 = find(C(:,d2),1);
                        x2 = d2 - b2;
                        y12 = c2 - a2;
                        y22 = a2 - c2;
                        if a2 == c2
                            h2 = h2 + 1;
                        else if x2 == y12
                                h2 = h2 + 1;
                            else if x2 == y22
                                    h2 = h2 + 1;
                                end
                            end
                        end
                    end
                end
                A(l,n) = h2;
                C(l,n) = 0;
            end
        end
        if rd > 0
            for o = m + 1  : 8
                h3 = 0;
                C(o,n) = 1;
                for b3 = 1 : 8
                    a3 = find(C(:,b3),1);
                    for d3 = b3 + 1 : 8
                        c3 = find(C(:,d3),1);
                        x3 = d3 - b3;
                        y13 = c3 - a3;
                        y23 = a3 - c3;
                        if a3 == c3
                            h3 = h3 + 1;
                        else if x3 == y13
                                h3 = h3 + 1;
                            else if x3 == y23
                                    h3 = h3 + 1;
                                end
                            end
                        end
                    end
                end
                A(o,n) = h3;
                C(o,n) = 0;
            end
        end
        C(m,n) = 1;
    end
    M = min(min(A));
    [i,j] = find(A==M);
    K = size(i,1);
    g = randi([1 K],1);
    C(:,j(g)) = zeros(1,8);
    C(i(g),j(g)) = 1;
    hs  = A(i(g),j(g));
    
% %     Hill climbing method ends here. If uncoment this a local minimum
% %     could be obtained.
% %     Comment from line 111 to 121
%     if C1 == C 
%         S = 0;
%         it = z + 1;
%     else
%         C1 = C;
%         z = z + 1;
%     end

% %     For ultimate solution. i.e. inorder to achieve global minimum. hs = 0
    if C1 == C 
        if hs == 0
            S = 0;
            it = z + 1;
        else 
            C = Ci;
        end
    else
        C1 = C;
        z = z + 1;
    end
end
disp('# Displayed below is the chess board');
disp('# 1 represents the queen positions and the zeros represent the blank squares');
disp('# Initial arrangement : ');
disp(Ci);
disp('# Final arrangement : ');
disp(C);
disp('# Cost (hs) = ');
disp(hs);
disp('# Number of iterations = ');
disp(it)