Rails.application.routes.draw do
  namespace :api do
    get "/name" => "answers#name_caps"
    get "/guess_a_number" => "answers#guess"
    # get "/guess_a_number_segment/:num_guess" => "answers#guess_segment"
    get "/guess_a_number_segment/:my_guess" => "answers#guess"
  end
end
