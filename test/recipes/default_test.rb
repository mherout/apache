# # encoding: utf-8

# Inspec test for recipe apache::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

unless os.windows?
  describe user('root') do
    it { should exist }
#    skip 'This is an example test, replace with your own test.'
  end
end

# cambios para que o puerto 80 escoite
#
describe port(80) do
  it { should be_listening }
#  skip 'This is an example test, replace with your own test.'
end

#  proba para testear a url local en /var/www/html/index.html
describe command("curl localhost") do
  its ("stdout") { should match ("La cosa marcha!!!") }
end
