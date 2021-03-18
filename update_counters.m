function [sayac_mu,sayac_lamb,sayac_rank]=update_counters(sayac,length_mu_vec,length_lambda_vec,length_rank_vec)

sayac_mu = mod(sayac,length_mu_vec);
if sayac_mu==0 
    sayac_mu=length_mu_vec; end

sayac_lamb = mod(ceil(sayac/length_mu_vec),length_lambda_vec);
if sayac_lamb==0 
    sayac_lamb=length_lambda_vec; end

sayac_rank = mod(ceil(sayac/(length_mu_vec*length_lambda_vec)),length_rank_vec);
if sayac_rank==0 
    sayac_rank=length_rank_vec; end
end