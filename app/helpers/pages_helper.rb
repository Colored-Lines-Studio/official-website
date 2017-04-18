module PagesHelper
  def home_button
    raw <<-EOF
      <a href="/" class="home-btn">Home</a>
    EOF
  end
end
