control 'slapd-1' do
  title 'Slapd Setup'
  desc '
    Check that slapd is installed and listening to ports
  '
  describe package('slapd') do
    it { should be_installed }
  end

  describe service('slapd') do
    it { should be_running }
  end

  describe port(389) do
    it { should be_listening }
    its('protocols') { should include 'tcp'}
    its('protocols') { should include 'tcp6'}
    its('processes') { should include 'slapd' }
  end
end
