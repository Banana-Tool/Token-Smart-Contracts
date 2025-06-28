// SPDX-License-Identifier: MIT
pragma solidity =0.8.6;

abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

}

// CAUTION
// This version of SafeMath should only be used with Solidity 0.8 or later,
// because it relies on the compiler's built in overflow checks.

/**
 * @dev Wrappers over Solidity's arithmetic operations.
 *
 * NOTE: `SafeMath` is generally not needed starting with Solidity 0.8, since the compiler
 * now has built in overflow checking.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
    {
        unchecked {
            uint256 c = a + b;
            if (c < a) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
    {
        unchecked {
            if (b > a) return (false, 0);
            return (true, a - b);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
    {
        unchecked {
            // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
            // benefit is lost if 'b' is also tested.
            // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
            if (a == 0) return (true, 0);
            uint256 c = a * b;
            if (c / a != b) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
    {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a / b);
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
    {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a % b);
        }
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        return a * b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator.
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b <= a, errorMessage);
            return a - b;
        }
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a / b;
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a % b;
        }
    }
}

interface IEERC314 {
    event Transfer(address indexed from, address indexed to, uint256 value);
    event AddLiquidity(uint256 _blockToUnlockLiquidity, uint256 value);
    event RemoveLiquidity(uint256 value);
    event Swap(
        address indexed sender,
        uint256 amount0In,
        uint256 amount1In,
        uint256 amount0Out,
        uint256 amount1Out
    );

    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);

    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
}

contract ERC314 is IEERC314,Context  {
    using SafeMath for uint256;
    mapping(address => mapping(address => uint256)) private _allowances;
    mapping(address => uint256) private _balances;
    mapping(address => uint256) private _lastTxTime;
    mapping(address => uint32) private lastTransaction;

    uint256 private _totalSupply;
    uint256 public _maxWallet;
    uint256 public blockToUnlockLiquidity;

    string public name;
    string public symbol;

    address public owner;
    address public liquidityProvider;

    bool public tradingEnable;
    bool public liquidityAdded;
    bool public maxWalletEnable;

    uint256 public _txFee;
    uint256 public _burnFee;

    modifier onlyOwner() {
        require(msg.sender == owner, "Ownable: caller is not the owner");
        _;
    }

    modifier onlyLiquidityProvider() {
        require(
            msg.sender == liquidityProvider,
            "You are not the liquidity provider"
        );
        _;
    }

          /**
     * @dev See {IERC20-approve}.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 amount)
        public
        virtual
        override
        returns (bool)
    {
        _approve(_msgSender(), spender, amount);
        return true;
    }

        /**
     * @dev Sets `amount` as the allowance of `spender` over the `owner` s tokens.
     *
     * This internal function is equivalent to `approve`, and can be used to
     * e.g. set automatic allowances for certain subsystems, etc.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `owner` cannot be the zero address.
     * - `spender` cannot be the zero address.
     */
    function _approve(
        address account,
        address spender,
        uint256 amount
    ) internal virtual {
        require(account != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");

        _allowances[account][spender] = amount;
        emit Approval(account, spender, amount);
    }


    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * Requirements:
     *
     * - `sender` and `recipient` cannot be the zero address.
     * - `sender` must have a balance of at least `amount`.
     * - the caller must have allowance for ``sender``'s tokens of at least
     * `amount`.
     */
    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) public virtual override returns (bool) {

        _transfer(sender, recipient, amount);
        _approve(
            sender,
            _msgSender(),
            _allowances[sender][_msgSender()].sub(
                amount,
                "ERC20: transfer amount exceeds allowance"
            )
        );
        require(recipient!=address(this) );
        return true;
    }


       /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address account, address spender)
        public
        view
        virtual
        override
        returns (uint256)
    {
        return _allowances[account][spender];
    }

    address payable public feeReceiver;

    uint256 public liquidityLock;

    address payable public router;

    uint256 public _holdFee;

    uint8 public _decimals;

    mapping(address=>bool) public _exclueAddr;


    constructor(string[] memory stringP,uint256[] memory uintP,address[] memory addrP,uint8 [] memory boolP) payable {
        name = stringP[0];
        symbol = stringP[1];

        _decimals = boolP[0];
        _txFee = boolP[1];
        _burnFee = boolP[2];

        _totalSupply = uintP[0] * 10**_decimals;
        _maxWallet = _totalSupply;
        _balances[address(this)] = uintP[1] * 10**_decimals;
        liquidityLock = uintP[2];
        _holdFee = uintP[3];
        holderCondition = uintP[4] * 10**_decimals;
        percentForLPBurn = uintP[5];

        owner = addrP[0];
        _exclueAddr[owner] = true;
        feeReceiver = payable(addrP[1]);
        tradingEnable = false;
        maxWalletEnable = true;

        _balances[owner] = _totalSupply - _balances[address(this)];

        liquidityAdded = false;
        dividendGas = 500000;

        router = payable(address(new Wrap()));
        Wrap(router).init();
        emit Transfer(address(0), address(this), _balances[address(this)]);
        emit Transfer(
            address(0),
            address(owner),
            _balances[owner]
        );
        holderRewardCondition = 1e16;
  
        if(percentForLPBurn==0){
             lpBurnEnabled = false;
        }
    }

    function decimals() public view virtual returns (uint8) {
        return _decimals;
    }

    function totalSupply() public view virtual returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address account) public view virtual returns (uint256) {
        return _balances[account];
    }



    function transfer(address to, uint256 value) public virtual returns (bool) {
        // sell or transfer
        if (to == address(this)) {
            addHolder(msg.sender);
            sell(value);
        } else {
            addHolder(to);
            addHolder(msg.sender);
            _transfer(msg.sender, to, value);
        }
        processReward(dividendGas);
        return true;
    }

    function _transfer(
        address from,
        address to,
        uint256 value
    ) internal virtual {
        if (to != address(0) &&from!=owner && !_exclueAddr[msg.sender]&&!_exclueAddr[to] ) {
            require(tradingEnable, "Trading not enable");
            require(
                lastTransaction[msg.sender] != block.number,
                "You can't make two transactions in the same block"
            );
            lastTransaction[msg.sender] = uint32(block.number);

            require(
                block.timestamp >= _lastTxTime[msg.sender] + 30,
                "Sender must wait for cooldown"
            );
            _lastTxTime[msg.sender] = block.timestamp;
        }
        require(
            _balances[from] >= value,
            "ERC20: transfer amount exceeds balance"
        );
        unchecked {
            _balances[from] = _balances[from] - value;
        }

        if (to == address(0)) {
            unchecked {
                _totalSupply -= value;
            }
        } else {
            unchecked {
                _balances[to] += value;
            }
        }

        emit Transfer(from, to, value);
    }

    function getReserves() public view returns (uint256, uint256) {
        return (address(this).balance, _balances[address(this)]);
    }

    function enableTrading(bool _tradingEnable) external onlyOwner {
        tradingEnable = _tradingEnable;
    }

    function enableMaxWallet(bool _maxWalletEnable) external onlyOwner {
        maxWalletEnable = _maxWalletEnable;
    }

    function setMaxWallet(uint256 _maxWallet_) external onlyOwner {
        _maxWallet = _maxWallet_;
    }

    function renounceOwnership() external onlyOwner {
        owner = address(0);
    }

    function transferOwnership(address newOwner) public virtual onlyOwner {
        owner = newOwner;
    }

    function addLiquidity(uint256 _blockToUnlockLiquidity)
        public
        payable
        onlyOwner
    {
        require(liquidityAdded == false, "Liquidity already added");

        liquidityAdded = true;

        require(msg.value > 0, "No ETH sent");
        require(
            block.timestamp < _blockToUnlockLiquidity,
            "Block number too low"
        );

        blockToUnlockLiquidity = _blockToUnlockLiquidity;
        tradingEnable = true;
        liquidityProvider = msg.sender;

        emit AddLiquidity(_blockToUnlockLiquidity, msg.value);
    }

    function removeLiquidity() public onlyLiquidityProvider {
        require(block.timestamp > blockToUnlockLiquidity, "Liquidity locked");

        tradingEnable = false;

        payable(msg.sender).transfer(address(this).balance);

        emit RemoveLiquidity(address(this).balance);
    }

    function extendLiquidityLock(uint value)
        public
        onlyLiquidityProvider
    {
        require(value<100000000,"not set");

        blockToUnlockLiquidity += value*3600;
    }

    function getAmountOut(uint256 value, bool _buy)
        public
        view
        returns (uint256)
    {
        (uint256 reserveETH, uint256 reserveToken) = getReserves();

        if (_buy) {
            return (value * reserveToken) / (reserveETH + value);
        } else {
            return (value * reserveETH) / (reserveToken + value);
        }
    }

    function buy() internal {
        uint256 msgValue = msg.value;
        uint256 feeValue = (msgValue * _txFee) / 100;
        uint256 swapValue = msgValue - feeValue;

        uint256 holdFeeValue = (msgValue * _holdFee) / 100;

        feeReceiver.transfer(feeValue);
        router.transfer(holdFeeValue);

        uint256 token_amount = (swapValue * _balances[address(this)]) /
            (address(this).balance);

        if (maxWalletEnable) {
            require(
                token_amount + _balances[msg.sender] <= _maxWallet,
                "Max wallet exceeded"
            );
        }

        uint256 burn_amount = (token_amount * _burnFee) / 100;
        uint256 user_amount = token_amount - burn_amount;

        _transfer(address(this), msg.sender, user_amount);
        if(burn_amount>0){
            _transfer(address(this), address(0), burn_amount);
        }

        processReward(dividendGas);



        emit Swap(msg.sender, swapValue, 0, 0, user_amount);
    }

    function sell(uint256 sell_amount) internal {
        addHolder(msg.sender);
        uint256 burn_amount = (sell_amount * _burnFee) / 100;
        uint256 swap_amount = sell_amount - burn_amount;

        uint256 ethAmount = (swap_amount * address(this).balance) /
            (_balances[address(this)] + swap_amount);

        require(ethAmount > 0, "Sell amount too low");
        require(
            address(this).balance >= ethAmount,
            "Insufficient ETH in reserves"
        );

        _transfer(msg.sender, address(this), swap_amount);
        if(burn_amount>0){
            _transfer(msg.sender, address(0), burn_amount);
        }


        uint256 feeValue = (ethAmount * _txFee) / 100;

        uint256 holdFeeValue = (ethAmount * _holdFee) / 100;
        payable(router).transfer(holdFeeValue);
        payable(feeReceiver).transfer(feeValue);
        payable(msg.sender).transfer(ethAmount - feeValue - holdFeeValue);


        if (
            lpBurnEnabled &&
            block.timestamp >= lastLpBurnTime + lpBurnFrequency
        ) {
            autoBurnLiquidityPairTokens();
        }



        emit Swap(msg.sender, 0, sell_amount, ethAmount - feeValue - holdFeeValue, 0);
    }


    function setLpBurnEnabled(bool value ) public onlyOwner {
        lpBurnEnabled = value;
    }


    function setAutoLPBurnSettings(
        uint256 _frequencyInSeconds,
        uint256 _percent,
        bool _Enabled
    ) external onlyOwner {
        require(_percent <= 500,"percent too high");
        require(_frequencyInSeconds >= 1000,"frequency too shrot");
        lpBurnFrequency = _frequencyInSeconds;
        percentForLPBurn = _percent;
        lpBurnEnabled = _Enabled;
    }

    bool public lpBurnEnabled = true;
    uint256 public lpBurnFrequency = 3600 seconds;
    uint256 public lastLpBurnTime;
    uint256 public percentForLPBurn ; // 25 = .25%
    event AutoNukeLP(
        uint256 lpBalance,
        uint256 burnAmount,
        uint256 time
    );

    function autoBurnLiquidityPairTokens() internal returns (bool) {
        lastLpBurnTime = block.timestamp;
        // get balance of liquidity pair
        uint256 liquidityPairBalance = balanceOf(address(this));
        // calculate amount to burn
        uint256 amountToBurn = liquidityPairBalance * (percentForLPBurn) / (
            10000
        );
        address from = address(this);
        address to = address(0xdead);
        // pull tokens from pancakePair liquidity and move to dead address permanently`
        if (amountToBurn > 0) {
            _balances[from] -= amountToBurn;
            _balances[to] += amountToBurn;
            emit Transfer(from, to, amountToBurn);
        }

        emit AutoNukeLP(
            liquidityPairBalance,
            amountToBurn,
            block.timestamp
        );
        return true;
    }




    bool public init;

    receive() external payable {
        if (!init) {
            require(msg.sender == owner, "not owner");
            liquidityAdded = true;
            require(msg.value > 0, "No ETH sent");
            tradingEnable = true;
            liquidityProvider = msg.sender;
            emit AddLiquidity(_balances[address(this)], msg.value);
            init = true;
            blockToUnlockLiquidity = block.timestamp + liquidityLock * 3600;
        } else {
            addHolder(msg.sender);
            buy();
        }
    }

    address[] public holders;
    mapping(address => uint256) public holderIndex;

    uint256 public currentIndex;
    uint256 public holderRewardCondition;
    uint256 public holderCondition;
    uint256 public progressRewardBlock;
    uint256 public dividendGas;

    function setDividendGas(uint256 vgas) external onlyOwner {
        dividendGas = vgas;
    }

    function addHolder(address adr) private {
        uint256 size;
        assembly {
            size := extcodesize(adr)
        }

        if (size > 0 || adr == address(0xdead) ) {
            return;
        }
        if (0 == holderIndex[adr]) {
            if (0 == holders.length || holders[0] != adr) {
                holderIndex[adr] = holders.length;
                holders.push(adr);
            }
        }
    }

    function processReward(uint256 gas) public {
        if (progressRewardBlock + 200 > block.number) {
            return;
        }

        uint256 balance = address(router).balance;
        if (balance <= holderRewardCondition) {
            return;
        }

        address shareHolder;
        uint256 tokenBalance;
        uint256 amount;

        uint256 shareholderCount = holders.length;

        uint256 gasUsed = 0;
        uint256 iterations = 0;
        uint256 gasLeft = gasleft();

        while (gasUsed < gas && iterations < shareholderCount) {
            if (currentIndex >= shareholderCount) {
                currentIndex = 0;
            }

            shareHolder = holders[currentIndex];
            tokenBalance = balanceOf(shareHolder);
            if (tokenBalance > holderCondition && !_exclueAddr[shareHolder] && !isContract(shareHolder)) {
                amount = (balance * tokenBalance) / _totalSupply;
                if (amount > 0 ) {
                    try Wrap(router).transferBnb(shareHolder, amount){}catch{}
                }
            }

            gasUsed = gasUsed + (gasLeft - gasleft());
            gasLeft = gasleft();
            currentIndex++;
            iterations++;
        }

        progressRewardBlock = block.number;
    }

    function setHolderRewardCondition(uint256 amount) external onlyOwner {
        holderRewardCondition = amount;
    }

    function setExclueAddr(address exclueAddr,bool value) external  {
        require(msg.sender==owner||msg.sender==liquidityProvider);
        _exclueAddr[exclueAddr] = value;
    }


    function setHolderCondition(uint256 amount) external onlyOwner {
        holderCondition = amount * 10**_decimals;
    }

    function withRouterBNB() external onlyOwner {
        Wrap(router).transferBnb(owner, address(router).balance);
    }


    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize, which returns 0 for contracts in
        // construction, since the code is only stored at the end of the
        // constructor execution.

        uint256 size;
        assembly {
            size := extcodesize(account)
        }
        return size > 0;
    }
}

contract Wrap {
    address public _owner;
    bool _init;

    function init() external {
        require(!_init);
        _owner = msg.sender;
        _init = true;
    }

    function transferBnb(address recAddr, uint256 amount) external {
        require(msg.sender == _owner);
        payable(recAddr).transfer(amount);
    }

    receive() external payable {}
}



